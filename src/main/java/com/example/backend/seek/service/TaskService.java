package com.example.backend.seek.service;

import com.example.backend.seek.dto.TaskDto;
import java.util.List;

public interface TaskService {

    List<TaskDto> getAllTasks();

    TaskDto getTaskById(Long id);

    TaskDto createTask(TaskDto taskDto);

    TaskDto updateTask(Long id, TaskDto taskDto);

    void deleteTask(Long id);
}