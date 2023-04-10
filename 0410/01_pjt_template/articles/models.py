from django.db import models


class Article(models.Model):
    
    title = models.CharField(max_length=30)
    content = models.TextField()
    image = models.ImageField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f'{self.id}번째글 - {self.title}'

class Comment(models.Model):
    # comment로 article을 참조하면 정참조 (Article:Comment = 1 : N)
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.content
    
"""
장고에서는 N:1 혹은 M:N 관계가 설정되면 역참조 할 떄에 사용할 수 있는 manager 생성
역참조: 나를 참조하는 테이블을 참조 하는 것
article.comment_set.method()
|         ^^ (related manager)
모델의 객체
ForeignKey 에 related_name = "name" 설정 해주면 article.name 으로 가능
"""