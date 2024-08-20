import 'package:forum/features/post/data/post_api_client.dart';

import '../dtos/create_post_dto.dart';
import '../dtos/post_detail_dto.dart';
import '../dtos/post_dto.dart';

class PostRepository {
  final PostApiClient postApiClient;

  PostRepository({required this.postApiClient});

  Future<List<PostDto>> fetchPosts() async {
    return await postApiClient.getPosts();
  }

  Future<void> createPost(String title, String body) async {
    await postApiClient.createPost(
      CreatePostDto(title: title, body: body),
    );
  }

  Future<PostDetailDto> fetchPostDetail(String id) async {
    return await postApiClient.getPostDetail(id);
  }
}