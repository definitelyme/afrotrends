/// Creates the appropriate wrapper for Api Response type [List].
Map<String, dynamic> formatListResponse(Map<String, dynamic> headers, List<dynamic> response) => {
      "page_info": {
        "total": headers.entries.firstWhere((el) => el.key == 'x-wp-total').value.first,
        "total_pages": headers.entries.firstWhere((el) => el.key == 'x-wp-totalpages').value.first,
      },
      "items": response,
    };
