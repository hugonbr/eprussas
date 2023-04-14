const blogPosts = [
    {
        title: 'What is JavaScript?',
        author: 'Zach Gollwitzer',
        publishDate: 'Dec 20, 2020',
        content: 'some post content here'
    },
    {
        title: 'How do Arrays work?',
        author: 'Zach Gollwitzer',
        publishDate: 'Jan 1, 2021',
        content: 'some post content here'
    },
    {
        title: 'How long does it take to learn coding?',
        author: 'Zach Gollwitzer',
        publishDate: 'Jan 20, 2021',
        content: 'some post content here'
    }
];

// for (let i = 0; i < blogPosts.length; i++) {
//     const postTitle = blogPosts [i].title;
//     const postAuthor = blogPosts[i].author;
//     const postDate = blogPosts[i].publishDate;
//     const postContent = blogPosts[i].content;
//     // Here, we would use these variables to do something with each post
//     // I'll just print the values
//     console.log('--------------' + i + '--------------');
//     console.log(postTitle);
//     console.log(postAuthor);
//     console.log(postDate);
//     console.log(postContent);
// };

// blogPosts

console.log(blogPosts.map(getData));
//blogPosts.map(getData);

function getData(item) {
    return [item.title,item.author,item.publishDate,item.content].join(" ");
}

