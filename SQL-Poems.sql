Select * From Grade

Select * From Emotion

Select Count(*) from poem

Select top 76 * from Author
order by Author.Name

Select top 76 * from Author
left join grade on author.GradeId * grade.Id = grade.Id
order by author.name

select top 76 * from author
left join grade on author.GradeId = grade.Id
left join gender on author.GenderId = gender.Id
order by Author.Name

select sum(wordcount) as 'number of words' from poem

select top 1 * from poem
order by CharCount

Select count(*) as 'people in Grade' from author
left join grade on author.gradeId = Grade.Id
Where Grade.name = '2rd Grade'

Select count(*) as 'people in Grade' from author
left join grade on author.gradeId = Grade.Id
Where Grade.name = '1st Grade'
or grade.name = '2nd grade'
or grade.name = '3rd grade'

select count(*) as poemsInGrade from poem
left join author on poem.authorId = poem.AuthorId
left join grade on author.gradeId = grade.Id
where grade.name = '4th grade'

select count(*) as poemsInGrade from poem
left join author on poem.authorId = poem.authorId
left join grade on author.gradeId = grade.Id
order by Grade.name

select count(*), grade.Name as AuthorsInGrade from Author
left join grade on author.gradeId = grade.Id
group by grade.Name

select count(*), grade.Name as AuthorsInGrade from Author
left join grade on author.gradeId = grade.Id
group by grade.Name
order by grade.name

select top 1 poem.title, WordCount from poem
order by WordCount DESC

Select count(Title) NumPoems, AuthorId, Author.Name From poem 
left join Author on poem.AuthorId = Author.Id
group by Author.Id, Author.Name
order by count(Title) DESC

Select count(title) from poem
left join PoemEmotion on PoemEmotion.PoemId = Poem.Id
Left join EMotion On PoemEmotion.EmotionId =Emotiion.Id
Where Emotion.Name = 'Sadness'

Select count(title) from poem
left join PoemEmotion on PoemEmotion.PoemId = Poem.Id
Left join EMotion On PoemEmotion.EmotionId = Emotiion.Id
Where PoemEmotion.EmotionId is Null

