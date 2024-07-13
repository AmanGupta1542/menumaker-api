from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response

class MyPageNumberPagination(PageNumberPagination):
    page_size = 1
    # page_query_param = 'page'
    max_page_size = 50

    def get_paginated_response(self, data):
        return Response({
            'count': self.page.paginator.count,
            'next': self.get_next_link(),
            'previous': self.get_previous_link(),
            'data': data  # Change 'results' to 'data'
        })