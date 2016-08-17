//
//  MovieViewController.swift
//  One
//
//  Created by 阳阳 on 16/8/15.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

import UIKit

class MovieViewController: BaseViewController {
    lazy var dataArray=NSMutableArray()
    var tbView:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()

        //设置导航
        createHomeNav()
        
        //下载数据
      
        createDownloder()
    }
    //设置导航
    func createHomeNav(){
        self.addNavTitle("电影")
        self.view.backgroundColor = UIColor.whiteColor()
        //按钮
        addNavBtn(self, action: #selector(searchAction), isLeft: true, bgImageName: "fangfajin")
        
        addNavBtn(self, action: #selector(personAction), isLeft: false, bgImageName: "person")
    }
    
    //搜索
    func searchAction(){
        
    }
    
    //个人
    func personAction(){}
    
    //创建表格
    func createTbView(){
        //创建表格视图
        tbView = UITableView(frame: CGRectZero, style: .Plain)
        tbView?.delegate = self
        tbView?.dataSource = self
        tbView?.separatorStyle = .None
        view.addSubview(tbView!)
        //约束
        tbView?.snp_makeConstraints(closure: {
        
            (make) in
            make.edges.equalTo(self.view!)
            })
    }

    //下载数据
    func createDownloder(){
        let download = Download()
        download.delegate = self
        download.getWithUrl(movieUrl)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//MARK:Download代理下载
extension MovieViewController:DownloadDelegate{
    func downloader(downloader: Download, didFailWithError error: NSError) {
        print(error)
    }
    func downloader(downloader: Download, didFinishWithData data: NSData){
        let model = MovieModel.paresModel(data)
        self.dataArray.addObject(model)
    }
}

//MARK:UITableView代理
extension MovieViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        return UITableViewCell()
    }
    
}
