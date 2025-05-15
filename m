Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 891DFAB7FDF
	for <lists+openipmi-developer@lfdr.de>; Thu, 15 May 2025 10:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUfNYrFVrpmfLYoKMHlycuh2EZMfpMsorqlZK7vc7M0=; b=m7VKRff9P4rScDc0jvdv9bohMQ
	iIStaQ95vBIvO4XhaHqPBgTNC0MIr6pAQbAkZp0aJAk/4NMeyInsFoNMioD6GoJajEpmBVE7/eRCv
	NCm/Fsadx2Lh1H/TmZ5465o5iINAaGLkK/AyiiwJ8AlljVdGbz0S/Ufc3QNL4K9z7eJQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uFTgK-0002Hm-7w;
	Thu, 15 May 2025 08:11:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yiyang13@huawei.com>) id 1uFTgJ-0002Ha-1B
 for openipmi-developer@lists.sourceforge.net;
 Thu, 15 May 2025 08:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ciae2PhsKAbhLLYPgoR8E5F91Q/zo8JrWRWF2Lhs4UQ=; b=MrEuXA9kBPvPSUNHRqIHGCVYwh
 2Ezc7V3BskJPnnLV8rlmbTaolnvPtsP3MxyyfjL3cybbA7If82MgtLso8twf7NNVUfgQFzUQ2/SZm
 q0W7aRdq8XAPHUqvvZG8wh739GlDZMJ49eugskGkxb0y3dj+UTDDBYHJobFvOXjwdS1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ciae2PhsKAbhLLYPgoR8E5F91Q/zo8JrWRWF2Lhs4UQ=; b=d3TChXUSf8XKmRFqvAM+W3gBNy
 KY9pWOxqYTW0tezvDK/lzLnooAfFegC/taRE1MdUKn2eNVNe7WWMcat+L4wraZ+rfJFzoBVn9rQGq
 Vi1R+86LJ1tofQqF9by9xkgIKIi1oiI2bLjfgYAOON9/0PX2uTmD8e2l6GanepsUFlr8=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uFTgE-0007MW-5U for openipmi-developer@lists.sourceforge.net;
 Thu, 15 May 2025 08:11:06 +0000
Received: from mail.maildlp.com (unknown [172.19.163.252])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4ZyjXx6Knwz1DKb1;
 Thu, 15 May 2025 16:09:21 +0800 (CST)
Received: from kwepemk200016.china.huawei.com (unknown [7.202.194.82])
 by mail.maildlp.com (Postfix) with ESMTPS id 2B59F180B55;
 Thu, 15 May 2025 16:10:49 +0800 (CST)
Received: from [10.67.108.122] (10.67.108.122) by
 kwepemk200016.china.huawei.com (7.202.194.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 15 May 2025 16:10:48 +0800
To: <corey@minyard.net>
References: <20250513081622.125071-1-yiyang13@huawei.com>
 <aCMrg1wqUVi2iCMk@mail.minyard.net>
Message-ID: <d3d50ad3-19e7-7822-f22a-3deb57758ab7@huawei.com>
Date: Thu, 15 May 2025 16:10:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <aCMrg1wqUVi2iCMk@mail.minyard.net>
X-Originating-IP: [10.67.108.122]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemk200016.china.huawei.com (7.202.194.82)
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/5/13 19:22, Corey Minyard wrote: > On Tue, May 13,
 2025 at 08:16:22AM +0000, Yi Yang wrote: >> Syzkaller reported this bug:
 >> ================================================================= [...]
 Content analysis details:   (-3.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.255 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
 Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.255 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
 Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.255 listed in bl.score.senderscore.com]
 -0.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1uFTgE-0007MW-5U
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix underflow in
 ipmi_create_user()
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: "yiyang \(D\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "yiyang \(D\)" <yiyang13@huawei.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 lujialin4@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2025/5/13 19:22, Corey Minyard wrote:
> On Tue, May 13, 2025 at 08:16:22AM +0000, Yi Yang wrote:
>> Syzkaller reported this bug:
>> ==================================================================
>> BUG: KASAN: global-out-of-bounds in instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
>> BUG: KASAN: global-out-of-bounds in atomic_dec include/linux/atomic/atomic-instrumented.h:592 [inline]
>> BUG: KASAN: global-out-of-bounds in ipmi_create_user.part.0+0x5e5/0x790 drivers/char/ipmi/ipmi_msghandler.c:1291
>> Write of size 4 at addr ffffffff8fc6a438 by task syz.5.1074/5888
> 
> This code has been completely rewritten in the next tree and already
> fixed.
> 
> -corey
> 
>>
>> CPU: 0 PID: 5888 Comm: syz.5.1074 Not tainted 6.6.0+ #60
>> ......
>> Call Trace:
>>   <TASK>
>>   __dump_stack lib/dump_stack.c:88 [inline]
>>   dump_stack_lvl+0x72/0xa0 lib/dump_stack.c:106
>>   print_address_description.constprop.0+0x6b/0x3d0 mm/kasan/report.c:364
>>   print_report+0xba/0x280 mm/kasan/report.c:475
>>   kasan_report+0xa9/0xe0 mm/kasan/report.c:588
>>   check_region_inline mm/kasan/generic.c:181 [inline]
>>   kasan_check_range+0x100/0x1c0 mm/kasan/generic.c:187
>>   instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
>>   atomic_dec include/linux/atomic/atomic-instrumented.h:592 [inline]
>>   ipmi_create_user.part.0+0x5e5/0x790 drivers/char/ipmi/ipmi_msghandler.c:1291
>>   ipmi_create_user+0x56/0x80 drivers/char/ipmi/ipmi_msghandler.c:1236
>>   ipmi_open+0xac/0x2b0 drivers/char/ipmi/ipmi_devintf.c:97
>>   chrdev_open+0x276/0x700 fs/char_dev.c:414
>>   do_dentry_open+0x6a7/0x1410 fs/open.c:929
>>   vfs_open+0xd1/0x440 fs/open.c:1060
>>   do_open+0x957/0x10d0 fs/namei.c:3671
>>   path_openat+0x258/0x770 fs/namei.c:3830
>>   do_filp_open+0x1c7/0x410 fs/namei.c:3857
>>   do_sys_openat2+0x5bd/0x6a0 fs/open.c:1428
>>   do_sys_open fs/open.c:1443 [inline]
>>   __do_sys_openat fs/open.c:1459 [inline]
>>   __se_sys_openat fs/open.c:1454 [inline]
>>   __x64_sys_openat+0x17a/0x210 fs/open.c:1454
>>   do_syscall_x64 arch/x86/entry/common.c:51 [inline]
>>   do_syscall_64+0x59/0x110 arch/x86/entry/common.c:81
>>   entry_SYSCALL_64_after_hwframe+0x78/0xe2
>> RIP: 0033:0x54d2cd
>> Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
>> RSP: 002b:00007f4751920048 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
>> RAX: ffffffffffffffda RBX: 0000000000796080 RCX: 000000000054d2cd
>> RDX: 0000000000000000 RSI: 0000000020004280 RDI: ffffffffffffff9c
>> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
>> R10: 000000000000001e R11: 0000000000000246 R12: 000000000079608c
>> R13: 0000000000000000 R14: 0000000000796080 R15: 00007f4751900000
>>   </TASK>
>>
>> The buggy address belongs to the variable:
>>   ipmi_interfaces+0x38/0x40
>>
>> The buggy address belongs to the physical page:
>> page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x45a6a
>> flags: 0x3fffff00004000(reserved|node=0|zone=1|lastcpupid=0x1fffff)
>> raw: 003fffff00004000 ffffea0001169a88 ffffea0001169a88 0000000000000000
>> raw: 0000000000000000 0000000000000000 00000001ffffffff 0000000000000000
>> page dumped because: kasan: bad access detected
>>
>> Memory state around the buggy address:
>>   ffffffff8fc6a300: 00 00 00 00 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
>>   ffffffff8fc6a380: 00 00 f9 f9 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
>>> ffffffff8fc6a400: 00 00 f9 f9 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
>>                                          ^
>>   ffffffff8fc6a480: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>>   ffffffff8fc6a500: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f9 f9
>> ==================================================================
>>
>> In the ipmi_create_user() function, the intf->nr_users variable has an
>> underflow issue. Specifically, on the exception path (goto out_kfree;)
>> before atomic_add_return(), calling atomic_dec() when intf->nr_users has
>> not been incremented will result in an underflow.
>>
>> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
>> Signed-off-by: Yi Yang <yiyang13@huawei.com>
>> ---
>>   drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index 3ba9d7e9a6c7..27a12b31cfb6 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -1246,18 +1246,18 @@ int ipmi_create_user(unsigned int          if_num,
>>    found:
>>   	if (atomic_add_return(1, &intf->nr_users) > max_users) {
>>   		rv = -EBUSY;
>> -		goto out_kfree;
>> +		goto out_dec;
>>   	}
>>   
>>   	INIT_WORK(&new_user->remove_work, free_user_work);
>>   
>>   	rv = init_srcu_struct(&new_user->release_barrier);
>>   	if (rv)
>> -		goto out_kfree;
>> +		goto out_dec;
>>   
>>   	if (!try_module_get(intf->owner)) {
>>   		rv = -ENODEV;
>> -		goto out_kfree;
>> +		goto out_dec;
>>   	}
>>   
>>   	/* Note that each existing user holds a refcount to the interface. */
>> @@ -1281,8 +1281,9 @@ int ipmi_create_user(unsigned int          if_num,
>>   	*user = new_user;
>>   	return 0;
>>   
>> -out_kfree:
>> +out_dec:
>>   	atomic_dec(&intf->nr_users);
>> +out_kfree:
>>   	srcu_read_unlock(&ipmi_interfaces_srcu, index);
>>   	vfree(new_user);
>>   	return rv;
>> -- 
>> 2.25.1
>>
> 
> .
> 

I see that you resolved this issue through code refactoring in the Linux 
next tree. How do you plan to address it in the stable 6.6 tree?

--yiyang



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
