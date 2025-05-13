Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B11EAB5429
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 May 2025 13:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w1ysZ1EouJtAfTijkBUVIYRy5Uxf+557NjKDu7sNOmc=; b=MP6QYTt15nOY6gHDRyNET8wHEp
	wPjhguTcX1fbPqgXgQ9IgFRTAVA1+CCD1rWqYYNLf3CoB1MsruvfKvitqxU6oZL5KQl5/uvovryxz
	zFmo++96Rppc7gycLun3+6Jl9Fq8EMii3yKU5BMjaR5ibj3/POIhIYDhp9LN8RTSyRRM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uEoD5-00078R-RJ;
	Tue, 13 May 2025 11:54:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uEoD4-00078J-Nx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 May 2025 11:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GMd9Mw32tylTlIfNhjIKQfPW2uM6xw8n8nk6ZE2GfhM=; b=b1qckP06VJdMJ+cBRut6kcD8I/
 igXIUIyns0CmlgWBrudhtQ2Oe+n5OE+tEjNcIMBNN/yT7JUUgmmvYhQU1gn7Nw/bSCGgdsIXsGOLY
 O5ZXhZPwVNlypUtJRGAfx1psp41LWsuYk7qUnOVAYbbiJ7l703lMLdLv4IwU4oqegmCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GMd9Mw32tylTlIfNhjIKQfPW2uM6xw8n8nk6ZE2GfhM=; b=bYoKANuWwLds3Uk0j3HKGJFcUf
 fxQZ9ZgaM2vBSZlA1GFr8A1qg4/wsjwc6BLp+K6V3icLMYXzkNQGpWHKU0Pu4sXqFOb/otYHwVqA1
 pPCFOKK4gBT3wBR1QiT4ayAYalSoEfnw/8xvT8oJRJ196tSXLZJZpuBvsJrLclJ7lqCA=;
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uEoD2-0004kV-Nw for openipmi-developer@lists.sourceforge.net;
 Tue, 13 May 2025 11:54:09 +0000
Received: by mail-io1-f53.google.com with SMTP id
 ca18e2360f4ac-8647e143f28so497867739f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 May 2025 04:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1747137243; x=1747742043;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GMd9Mw32tylTlIfNhjIKQfPW2uM6xw8n8nk6ZE2GfhM=;
 b=yeQnxjU7qV0usB62uHnqu/gnpAZS2cGRqsMU62C5Y6Ticlk/KziQ4jCX+mNyKhomrQ
 YReGolJPHqri/69gq61p1BkbQKsibADG2bkTieFLnNwKPrOD8lTjNiENjcNx2rUrv5QB
 AkiylETbZhE9yI//ReZU7cDc4bn++NSSr9EIgujnqKRACqKkyUVhQEKrwD4MfjQNQisU
 NRI9F0JRLI3TwzGhxSx1dndrhwgr1MWJ6zY+3Uvtglds3AmnV861uRRkahabswaWk3QE
 0U4xYvXHfk2z38zLxt+ucCVSxaRmnbTjYZ1lyJVp7oKvQsYk9Ubc0/t6/7eUB2wdKSY0
 Emcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747137243; x=1747742043;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GMd9Mw32tylTlIfNhjIKQfPW2uM6xw8n8nk6ZE2GfhM=;
 b=TMlM67FWUjWrAl7ezs3sIr+RoW/eoZX+q98MauNn7I9K/zVHcGgvFzp5PuMNp6a6/d
 7ctG7x24RRdV64pQ2uwutCGGmTS5OCRWQ3dGpPvu6I43TphlFXnsN3qNVPdJfsgyALMA
 jFcAB6I3G6Hdx/GLGO0HJIpV8TuY7Yby/QEHzcfRS1EAHO5tKPBlnQt/zmapOw/1ujK9
 kuBN/L5ai74bLOX1fu/gymWpo0f4Hb34+h3AuCh+PmLVNr/tePiUxnXz8CbtuWYVXUAS
 J0SpF7ERDlhNufrOiyByP473Q6SpjhNvropVCjaNK2eDBy7knra8MZ0jljqn9jIRwVUC
 aVJg==
X-Gm-Message-State: AOJu0YzPlENEyj3uMtfpcCj6ol8fZ/HTh9cn5koI0uNyb+y8utaBJH3f
 JDzf9wp1Wivt32uBr1rQ0DqZ7iGR1rOaNVjxRLcwiu2YgBcvxxvi4hdIdNNyedprvkvqkUZD682
 e
X-Gm-Gg: ASbGncvzD9WgR5mzx3AguEXmW/kHxtP8bIHUVG7e7FhFLdrElweEDRPfaWJhTXSWuLF
 jidmBF23NGeVT7/yjBkeHu5Sd8QOL08aY3g+2HrkKbN7n4PlSW5JdcVLPNOsnKF2Jc4Cg8uW08O
 J+y0Gn//2m7r8WydOkURFitAT5pk00bBwWvUwNLwq6SmwN2o2rpvP8c6S0S3zOi9UP3iCSAan7b
 WIQcCsRebUnDT8aTPkOaVjWezlMG4JJihPWoRdmxLUGnVngNHSrZM0y3XVtEOg6znB4cPTwaI2u
 8JNJnHUGOqF5gnBHMY8auPMPm4GQw4YEHRIYHXZN1PJ4gjHxhBsfiAo=
X-Google-Smtp-Source: AGHT+IHZ2FDbXNLi4OL3xF5SwaB/7xgFmAeEis6B2PzyuyHL3U3MF+6Tu+p/+hCdOPx/PpdjKFJx0w==
X-Received: by 2002:a05:6830:6486:b0:72b:8aec:fbd4 with SMTP id
 46e09a7af769-7322699e5f7mr12138934a34.3.1747135368962; 
 Tue, 13 May 2025 04:22:48 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:9697:71e9:e239:bcd2])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7322647eb00sm1907216a34.2.2025.05.13.04.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 May 2025 04:22:47 -0700 (PDT)
Date: Tue, 13 May 2025 06:22:43 -0500
From: Corey Minyard <corey@minyard.net>
To: Yi Yang <yiyang13@huawei.com>
Message-ID: <aCMrg1wqUVi2iCMk@mail.minyard.net>
References: <20250513081622.125071-1-yiyang13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250513081622.125071-1-yiyang13@huawei.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 13, 2025 at 08:16:22AM +0000, Yi Yang wrote: >
 Syzkaller reported this bug: >
 ==================================================================
 > BUG: KASAN: global-out-of-bounds in instr [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uEoD2-0004kV-Nw
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 lujialin4@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, May 13, 2025 at 08:16:22AM +0000, Yi Yang wrote:
> Syzkaller reported this bug:
> ==================================================================
> BUG: KASAN: global-out-of-bounds in instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
> BUG: KASAN: global-out-of-bounds in atomic_dec include/linux/atomic/atomic-instrumented.h:592 [inline]
> BUG: KASAN: global-out-of-bounds in ipmi_create_user.part.0+0x5e5/0x790 drivers/char/ipmi/ipmi_msghandler.c:1291
> Write of size 4 at addr ffffffff8fc6a438 by task syz.5.1074/5888

This code has been completely rewritten in the next tree and already
fixed.

-corey

> 
> CPU: 0 PID: 5888 Comm: syz.5.1074 Not tainted 6.6.0+ #60
> ......
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0x72/0xa0 lib/dump_stack.c:106
>  print_address_description.constprop.0+0x6b/0x3d0 mm/kasan/report.c:364
>  print_report+0xba/0x280 mm/kasan/report.c:475
>  kasan_report+0xa9/0xe0 mm/kasan/report.c:588
>  check_region_inline mm/kasan/generic.c:181 [inline]
>  kasan_check_range+0x100/0x1c0 mm/kasan/generic.c:187
>  instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
>  atomic_dec include/linux/atomic/atomic-instrumented.h:592 [inline]
>  ipmi_create_user.part.0+0x5e5/0x790 drivers/char/ipmi/ipmi_msghandler.c:1291
>  ipmi_create_user+0x56/0x80 drivers/char/ipmi/ipmi_msghandler.c:1236
>  ipmi_open+0xac/0x2b0 drivers/char/ipmi/ipmi_devintf.c:97
>  chrdev_open+0x276/0x700 fs/char_dev.c:414
>  do_dentry_open+0x6a7/0x1410 fs/open.c:929
>  vfs_open+0xd1/0x440 fs/open.c:1060
>  do_open+0x957/0x10d0 fs/namei.c:3671
>  path_openat+0x258/0x770 fs/namei.c:3830
>  do_filp_open+0x1c7/0x410 fs/namei.c:3857
>  do_sys_openat2+0x5bd/0x6a0 fs/open.c:1428
>  do_sys_open fs/open.c:1443 [inline]
>  __do_sys_openat fs/open.c:1459 [inline]
>  __se_sys_openat fs/open.c:1454 [inline]
>  __x64_sys_openat+0x17a/0x210 fs/open.c:1454
>  do_syscall_x64 arch/x86/entry/common.c:51 [inline]
>  do_syscall_64+0x59/0x110 arch/x86/entry/common.c:81
>  entry_SYSCALL_64_after_hwframe+0x78/0xe2
> RIP: 0033:0x54d2cd
> Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007f4751920048 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
> RAX: ffffffffffffffda RBX: 0000000000796080 RCX: 000000000054d2cd
> RDX: 0000000000000000 RSI: 0000000020004280 RDI: ffffffffffffff9c
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 000000000000001e R11: 0000000000000246 R12: 000000000079608c
> R13: 0000000000000000 R14: 0000000000796080 R15: 00007f4751900000
>  </TASK>
> 
> The buggy address belongs to the variable:
>  ipmi_interfaces+0x38/0x40
> 
> The buggy address belongs to the physical page:
> page: refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x45a6a
> flags: 0x3fffff00004000(reserved|node=0|zone=1|lastcpupid=0x1fffff)
> raw: 003fffff00004000 ffffea0001169a88 ffffea0001169a88 0000000000000000
> raw: 0000000000000000 0000000000000000 00000001ffffffff 0000000000000000
> page dumped because: kasan: bad access detected
> 
> Memory state around the buggy address:
>  ffffffff8fc6a300: 00 00 00 00 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
>  ffffffff8fc6a380: 00 00 f9 f9 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
> >ffffffff8fc6a400: 00 00 f9 f9 f9 f9 f9 f9 00 00 00 00 f9 f9 f9 f9
>                                         ^
>  ffffffff8fc6a480: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>  ffffffff8fc6a500: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f9 f9
> ==================================================================
> 
> In the ipmi_create_user() function, the intf->nr_users variable has an
> underflow issue. Specifically, on the exception path (goto out_kfree;)
> before atomic_add_return(), calling atomic_dec() when intf->nr_users has
> not been incremented will result in an underflow.
> 
> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
> Signed-off-by: Yi Yang <yiyang13@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 3ba9d7e9a6c7..27a12b31cfb6 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1246,18 +1246,18 @@ int ipmi_create_user(unsigned int          if_num,
>   found:
>  	if (atomic_add_return(1, &intf->nr_users) > max_users) {
>  		rv = -EBUSY;
> -		goto out_kfree;
> +		goto out_dec;
>  	}
>  
>  	INIT_WORK(&new_user->remove_work, free_user_work);
>  
>  	rv = init_srcu_struct(&new_user->release_barrier);
>  	if (rv)
> -		goto out_kfree;
> +		goto out_dec;
>  
>  	if (!try_module_get(intf->owner)) {
>  		rv = -ENODEV;
> -		goto out_kfree;
> +		goto out_dec;
>  	}
>  
>  	/* Note that each existing user holds a refcount to the interface. */
> @@ -1281,8 +1281,9 @@ int ipmi_create_user(unsigned int          if_num,
>  	*user = new_user;
>  	return 0;
>  
> -out_kfree:
> +out_dec:
>  	atomic_dec(&intf->nr_users);
> +out_kfree:
>  	srcu_read_unlock(&ipmi_interfaces_srcu, index);
>  	vfree(new_user);
>  	return rv;
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
