Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3549947C128
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Dec 2021 15:06:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mzfmA-0006RD-CB; Tue, 21 Dec 2021 14:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mzfm8-0006R4-JX
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Dec 2021 14:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUOnHPowtx6q4q24zTCtJzxc21cmmOXKCgae/dYiG+E=; b=nOOjMAWYP+Kgh7Mi4Wk76yt2Rf
 /4wteSMtjVzBVDuTnUTpB9Z8rKiPRK0Z6BleRVy18CaTVB2/JaWs38nR7PxWumV3eFM2OHOj+kBMG
 n5bl2Ec0GVr8d+X7JhP+MHmN5LqH5PR1oMyA9zx6zFhywQzvXHnChYIjY0GPR/MjGMXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EUOnHPowtx6q4q24zTCtJzxc21cmmOXKCgae/dYiG+E=; b=Gn9byzMqarh8icbjsefh1pGMwi
 F+DCJqcOwJ+eq4k4INoBwCzME8FViDtM5QE0pPc0Q5utj1M6Ap1T7q/KNA9X3dSFUC+yQj+2PHIgv
 7eN4baMZ8OhixbRbtotu0spufhGX+dSujmuTU9Fk0ZY5tFMn4XEk+TEQVkOaUJAdn4ko=;
Received: from mail-qv1-f50.google.com ([209.85.219.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mzfm4-00084W-F0
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Dec 2021 14:05:56 +0000
Received: by mail-qv1-f50.google.com with SMTP id h5so10748332qvh.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Dec 2021 06:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=EUOnHPowtx6q4q24zTCtJzxc21cmmOXKCgae/dYiG+E=;
 b=YB1ehYxKUttskAql2UTpddRguX0jF5Z+97LDNKvdkuz2lCu7++UE77+bG9GwoBsZk6
 b1BPZmviOj8Iyk2EGEZ39KEC7x4PapNyvy2/y/66k11nkSjpldmYmpBblReevEUZyZwu
 rzQbdO778yqstKdv4fV7nHCsd8R0PTS5S7RpLUpjx2GgMrQN4cvFKGvuLIsQ8yNsVg9Q
 RUc3SM7SsPzUONApMUM3mBOMIg/ZSioYVcLLo8b1+sKg+I9h5ITDwzoWK5BJeU8J/5eb
 gI8XP163ndqH7y+rM2DKV0zy1m6hk+VP4qpQOLNRHQ2oeCilvmD0sK1IB5nYzLFsYi16
 D6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=EUOnHPowtx6q4q24zTCtJzxc21cmmOXKCgae/dYiG+E=;
 b=YTIRX/9jdztEV5R9OnpJuKwEBkCAYwMqxd2hZR2mzGjTzE7uN+PKcV3WRfCBB8H37v
 EVPPfDCyY5PX9mKP4z9W6kAHsi8n+XMKTOjRuOMheWxh9UARmOAXxY4WwzaXMONPXdOL
 vKT7rhfUi8DAddmILGQ8y8x66QkckBJlgHUkJRXVytoKrLRF31xRGXjB19JNqV8oRsXI
 gZ2a2fjTrOndqa9ZY8Tm1GShAI0WDu7wykY68IVpkcMvZ8057K/DOCMQZkWZFFiv/p5R
 7lwx/09oiHT3xGiwL+ZkF5rjvm84BlWMF086Q9cU+S2AEflWfL2/dE6ZNwVsfLtIOL6Z
 LFeQ==
X-Gm-Message-State: AOAM530gGTl+aHaF+mRjNNW4D6FJehDGojKTyRF6CCzvg3g0whj7Hpir
 2/Ag9H+G07I1qgM4TxAPNQ==
X-Google-Smtp-Source: ABdhPJy59iSnoogBCUs9whKRQz+C80MTK4n4/b8d5/sIL7la4xnj1O/Nw5ncXDq5ykyxHxdPNCA4/A==
X-Received: by 2002:a05:6214:410c:: with SMTP id
 kc12mr1938735qvb.53.1640095546397; 
 Tue, 21 Dec 2021 06:05:46 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id s6sm14522820qko.43.2021.12.21.06.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 06:05:45 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1461:51dd:3b2b:342d])
 by serve.minyard.net (Postfix) with ESMTPSA id C1243180013;
 Tue, 21 Dec 2021 14:05:44 +0000 (UTC)
Date: Tue, 21 Dec 2021 08:05:43 -0600
From: Corey Minyard <minyard@acm.org>
To: Wu Bo <wubo40@huawei.com>
Message-ID: <20211221140543.GT14936@minyard.net>
References: <1640070034-56671-1-git-send-email-wubo40@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1640070034-56671-1-git-send-email-wubo40@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Dec 21, 2021 at 03:00:34PM +0800, Wu Bo wrote: > Hi, 
 > > When testing install and uninstall of ipmi_si.ko and ipmi_msghandler.ko,
 > the system crashed. Thanks for the fix, it's in my queue. I'll try to get
 it up soon. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mzfm4-00084W-F0
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: Fix UAF when uninstall
 ipmi_si and ipmi_msghandler module
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
Reply-To: minyard@acm.org
Cc: linfeilong@huawei.com, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Dec 21, 2021 at 03:00:34PM +0800, Wu Bo wrote:
> Hi,
> 
> When testing install and uninstall of ipmi_si.ko and ipmi_msghandler.ko,
> the system crashed.

Thanks for the fix, it's in my queue.  I'll try to get it up soon.

-corey

> 
> The log as follows:
> [  141.087026] BUG: unable to handle kernel paging request at ffffffffc09b3a5a
> [  141.087241] PGD 8fe4c0d067 P4D 8fe4c0d067 PUD 8fe4c0f067 PMD 103ad89067 PTE 0
> [  141.087464] Oops: 0010 [#1] SMP NOPTI
> [  141.087580] CPU: 67 PID: 668 Comm: kworker/67:1 Kdump: loaded Not tainted 4.18.0.x86_64 #47
> [  141.088009] Workqueue: events 0xffffffffc09b3a40
> [  141.088009] RIP: 0010:0xffffffffc09b3a5a
> [  141.088009] Code: Bad RIP value.
> [  141.088009] RSP: 0018:ffffb9094e2c3e88 EFLAGS: 00010246
> [  141.088009] RAX: 0000000000000000 RBX: ffff9abfdb1f04a0 RCX: 0000000000000000
> [  141.088009] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 0000000000000246
> [  141.088009] RBP: 0000000000000000 R08: ffff9abfffee3cb8 R09: 00000000000002e1
> [  141.088009] R10: ffffb9094cb73d90 R11: 00000000000f4240 R12: ffff9abfffee8700
> [  141.088009] R13: 0000000000000000 R14: ffff9abfdb1f04a0 R15: ffff9abfdb1f04a8
> [  141.088009] FS:  0000000000000000(0000) GS:ffff9abfffec0000(0000) knlGS:0000000000000000
> [  141.088009] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  141.088009] CR2: ffffffffc09b3a30 CR3: 0000008fe4c0a001 CR4: 00000000007606e0
> [  141.088009] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  141.088009] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  141.088009] PKRU: 55555554
> [  141.088009] Call Trace:
> [  141.088009]  ? process_one_work+0x195/0x390
> [  141.088009]  ? worker_thread+0x30/0x390
> [  141.088009]  ? process_one_work+0x390/0x390
> [  141.088009]  ? kthread+0x10d/0x130
> [  141.088009]  ? kthread_flush_work_fn+0x10/0x10
> [  141.088009]  ? ret_from_fork+0x35/0x40] BUG: unable to handle kernel paging request at ffffffffc0b28a5a
> [  200.223240] PGD 97fe00d067 P4D 97fe00d067 PUD 97fe00f067 PMD a580cbf067 PTE 0
> [  200.223464] Oops: 0010 [#1] SMP NOPTI
> [  200.223579] CPU: 63 PID: 664 Comm: kworker/63:1 Kdump: loaded Not tainted 4.18.0.x86_64 #46
> [  200.224008] Workqueue: events 0xffffffffc0b28a40
> [  200.224008] RIP: 0010:0xffffffffc0b28a5a
> [  200.224008] Code: Bad RIP value.
> [  200.224008] RSP: 0018:ffffbf3c8e2a3e88 EFLAGS: 00010246
> [  200.224008] RAX: 0000000000000000 RBX: ffffa0799ad6bca0 RCX: 0000000000000000
> [  200.224008] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 0000000000000246
> [  200.224008] RBP: 0000000000000000 R08: ffff9fe43fde3cb8 R09: 00000000000000d5
> [  200.224008] R10: ffffbf3c8cb53d90 R11: 00000000000f4240 R12: ffff9fe43fde8700
> [  200.224008] R13: 0000000000000000 R14: ffffa0799ad6bca0 R15: ffffa0799ad6bca8
> [  200.224008] FS:  0000000000000000(0000) GS:ffff9fe43fdc0000(0000) knlGS:0000000000000000
> [  200.224008] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  200.224008] CR2: ffffffffc0b28a30 CR3: 00000097fe00a002 CR4: 00000000007606e0
> [  200.224008] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  200.224008] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  200.224008] PKRU: 55555554
> [  200.224008] Call Trace:
> [  200.224008]  ? process_one_work+0x195/0x390
> [  200.224008]  ? worker_thread+0x30/0x390
> [  200.224008]  ? process_one_work+0x390/0x390
> [  200.224008]  ? kthread+0x10d/0x130
> [  200.224008]  ? kthread_flush_work_fn+0x10/0x10
> [  200.224008]  ? ret_from_fork+0x35/0x40
> [  200.224008] kernel fault(0x1) notification starting on CPU 63
> [  200.224008] kernel fault(0x1) notification finished on CPU 63
> [  200.224008] CR2: ffffffffc0b28a5a
> [  200.224008] ---[ end trace c82a412d93f57412 ]---
> 
> The reason is as follows:
> T1: rmmod ipmi_si.
>     ->ipmi_unregister_smi()
>         -> ipmi_bmc_unregister()
>             -> __ipmi_bmc_unregister()
>                 -> kref_put(&bmc->usecount, cleanup_bmc_device);
>                     -> schedule_work(&bmc->remove_work);
> 
> T2: rmmod ipmi_msghandler.
>     ipmi_msghander module uninstalled, and the module space 
>     will be freed.
> 
> T3: bmc->remove_work doing cleanup the bmc resource.
>     -> cleanup_bmc_work()
>         -> platform_device_unregister(&bmc->pdev);
>             -> platform_device_del(pdev);
>                 -> device_del(&pdev->dev);
>                     -> kobject_uevent(&dev->kobj, KOBJ_REMOVE);
>                         -> kobject_uevent_env()
>                             -> dev_uevent()
>                                 -> if (dev->type && dev->type->name)
> 
>    'dev->type'(bmc_device_type) pointer space has freed when uninstall
>     ipmi_msghander module, 'dev->type->name' cause the system crash.
> 
> drivers/char/ipmi/ipmi_msghandler.c:
> 2820 static const struct device_type bmc_device_type = {
> 2821         .groups         = bmc_dev_attr_groups,
> 2822 };
> 
> Steps to reproduce:
> Add a time delay in cleanup_bmc_work() function,
> and uninstall ipmi_si and ipmi_msghandler module.
> 
> 2910 static void cleanup_bmc_work(struct work_struct *work)
> 2911 {
> 2912         struct bmc_device *bmc = container_of(work, struct bmc_device,
> 2913                                               remove_work);
> 2914         int id = bmc->pdev.id; /* Unregister overwrites id */
> 2915
> 2916         msleep(3000);   <---
> 2917         platform_device_unregister(&bmc->pdev);
> 2918         ida_simple_remove(&ipmi_bmc_ida, id);
> 2919 }
> 
> Use 'remove_work_wq' instead of 'system_wq' to solve this issues.
> 
> Fixes: b2cfd8ab4add ("ipmi: Rework device id and guid handling to catch changing BMCs")
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c837d54..d96184d 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3031,7 +3031,7 @@ static void cleanup_bmc_work(struct work_struct *work)
>  	 * with removing the device attributes while reading a device
>  	 * attribute.
>  	 */
> -	schedule_work(&bmc->remove_work);
> +	queue_work(remove_work_wq, &bmc->remove_work);
>  }
>  
>  /*
> -- 
> 1.8.3.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
