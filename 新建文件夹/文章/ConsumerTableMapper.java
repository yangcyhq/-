package com.mapper;

import com.model.ConsumerTable;
import com.model.ConsumerTableExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ConsumerTableMapper {
    int countByExample(ConsumerTableExample example);

    int deleteByExample(ConsumerTableExample example);

    int deleteByPrimaryKey(Integer consumerId);

    int insert(ConsumerTable record);

    int insertSelective(ConsumerTable record);

    List<ConsumerTable> selectByExample(ConsumerTableExample example);

    ConsumerTable selectByPrimaryKey(Integer consumerId);

    int updateByExampleSelective(@Param("record") ConsumerTable record, @Param("example") ConsumerTableExample example);

    int updateByExample(@Param("record") ConsumerTable record, @Param("example") ConsumerTableExample example);

    int updateByPrimaryKeySelective(ConsumerTable record);

    int updateByPrimaryKey(ConsumerTable record);
}