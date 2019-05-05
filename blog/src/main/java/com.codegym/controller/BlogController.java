package com.codegym.controller;

import com.codegym.model.Blog;
import com.codegym.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

//Em chưa làm được phần bổ sung
//Phần edit mới chỉ edit được title với content; sửa 2 cái author với category bị lỗi
//Em chưa xóa được blog


@Controller
public class BlogController {
    @Autowired
    private BlogService blogService;

    @GetMapping("/blogs")
    public ModelAndView listBlogs(Pageable pageable) {
        ModelAndView modelAndView = new ModelAndView("/blog/index", "blogs", blogService.findAll(pageable));
        modelAndView.addObject("message", "Successfully");
        return modelAndView;
    }

    @GetMapping("/create-blog")
    public ModelAndView showCreateBlogForm() {
        ModelAndView modelAndView = new ModelAndView("/blog/create");
        modelAndView.addObject("blog", new Blog());
        return modelAndView;
    }

    @PostMapping("/create-blog")
    public ModelAndView saveBlog(@ModelAttribute("blog") Blog blog) {
        blogService.save(blog);

        ModelAndView modelAndView = new ModelAndView("/blog/create");
        modelAndView.addObject("blog", new Blog());
        modelAndView.addObject("message", "New blog crated successfully");
        return modelAndView;
    }

    @GetMapping("/view-blog/{id}")
    public ModelAndView viewBlog(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("/blog/views");
        modelAndView.addObject("blogs", blogService.findById(id));
        return modelAndView;
    }

    @GetMapping("/edit-blog/{id}")
    public ModelAndView editBlogForm(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("/blog/edit");
        modelAndView.addObject("blog", blogService.findById(id));
        return modelAndView;
    }

    @PostMapping("/edit-blog")
    public ModelAndView editBlog(@ModelAttribute("blog") Blog blog){
        blogService.save(blog);

        ModelAndView modelAndView = new ModelAndView("/blog/edit");
        modelAndView.addObject("blog", blog);
        modelAndView.addObject("message", "New blog crated successfully");
        return modelAndView;
    }

    @GetMapping("/delete-blog/{id}")
    public ModelAndView showDeleteForm(@PathVariable Long id){
            ModelAndView modelAndView = new ModelAndView("/blog/delete");
            modelAndView.addObject("blog", blogService.findById(id));
            return modelAndView;
    }

    @PostMapping("/delete-blog")
    public String deleteCustomer(@ModelAttribute("blog") Blog blog){
        blogService.remove(blog.getId());
        return "redirect:blogs";
    }
}
