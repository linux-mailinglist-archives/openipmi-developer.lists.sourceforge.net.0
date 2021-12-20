Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 923BD47A9DD
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Dec 2021 13:45:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mzI2n-0005Zn-OB; Mon, 20 Dec 2021 12:45:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mzI2l-0005Zh-Cz
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Dec 2021 12:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U4JYxP/5SaL0ftJeTRDduJZMkiFwWS88S+dGOO2Ro98=; b=hxroq2kmeiA2vZII+KmkfL79Wb
 XJQCQC373NM6ZsQNDSjqiAQA7fFdgoNvNMeWjCv+W/gzRsCo+AxuPlgdf+ADic3cfsszjEvaPcNI2
 sa9YE0uN95uPZJc5I4YlZGWNB1Z2E23P3B2oYSD+EHC+lIqah+7E683BQBg0qArHxzNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U4JYxP/5SaL0ftJeTRDduJZMkiFwWS88S+dGOO2Ro98=; b=E4SjXkgonZumP3JWX50LWoRjmZ
 WZDzmsgWYlGd+R2RRIvdzUs+8k1CevgGBbWp3oNCVOe4XafmOJP7JYtXPmomdzefg+BjoQ8jOYvSu
 aowmCl/EyLB6H+VNrYguX9L4n08npcaNJlwY/+s3FwIwl0gpiG8yt89q+y/ECjoAelTA=;
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mzI2k-0004Bx-Li
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Dec 2021 12:45:31 +0000
Received: by mail-qt1-f172.google.com with SMTP id t34so9562336qtc.7
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Dec 2021 04:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=U4JYxP/5SaL0ftJeTRDduJZMkiFwWS88S+dGOO2Ro98=;
 b=T4HTkfCA9RfeFJmxlmW81Gcfzvl5wGSdLcZs6qG3XgMUq/1e1olJUWmbcBrCrYHNME
 p3KkBflM7fCB388HBs5gLy70iXqJFULRXVM1frKYtTZkM0nvFhp/C/t4rQTGBgEkCXIo
 4qiVN095V8gwdMxpw+jEtcX7PUrBRXYrWMwYBT9/mOsvK+RTf3Z97ia/oarFNzIPjmyP
 ZtnYgFK9ziFZynHz4Qfx6/Od9+1oiS8pCKqz0smb+/Guv6Uh912DJ5+3q+xy7uhsdmaj
 Q72OHM/00E6DXO/kuULPFt4BZ2Riej82xvcE1aztIHmVBn2ejBeuFvby/fY15QGlJyyP
 INeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=U4JYxP/5SaL0ftJeTRDduJZMkiFwWS88S+dGOO2Ro98=;
 b=EeLkLPK2Dph7ackPD3CfdAPpZujLq46pUBNKbszqs+OPMkaoGb1fRVLCXEW+pmSqMu
 FdGhf8C7eOAVns5I6hvZb5wLu+ieUAbTNFovsOhG26fUIvUESIE0OYfni4eq6TBA4V8r
 tOZftWV9ogV0lM86cx/dyLRvBPO+RKQsmE60xbpDn2L22znpuKSfOdD7NhkG5TaypNRt
 TNXQjkGtOXd2wbvFaeC7fxoZnNpCc9adXDIx4vyTlIZherAdJIqmO/a1TGMg7C0qchb0
 m8T79K5UYmCeVX7hXjIY0PYckT5irEbm0QVU8PegceiUGFviqygJSWPb/ICVZglFujUg
 ZatA==
X-Gm-Message-State: AOAM530a2lFneSpYXRKppQWxJMNuGA4LPgL535M+zJ0KUdXI7J61jTz7
 0q/I56KP4O4xutLGbYYlgg==
X-Google-Smtp-Source: ABdhPJzMfF8acVhjmPz5xevjzNNkd7ax2PQsb8UFp4V3+TjJJZn4qQbCj1o603jD5scHbWu+J51PiQ==
X-Received: by 2002:a05:622a:5:: with SMTP id
 x5mr12003571qtw.110.1640004324508; 
 Mon, 20 Dec 2021 04:45:24 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id r20sm11685315qkp.21.2021.12.20.04.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 04:45:24 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:4928:6b1:ed69:a2b0])
 by serve.minyard.net (Postfix) with ESMTPSA id 3E2861800B4;
 Mon, 20 Dec 2021 12:45:23 +0000 (UTC)
Date: Mon, 20 Dec 2021 06:45:22 -0600
From: Corey Minyard <minyard@acm.org>
To: Wu Bo <wubo40@huawei.com>
Message-ID: <20211220124522.GS14936@minyard.net>
References: <1639983320-34222-1-git-send-email-wubo40@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1639983320-34222-1-git-send-email-wubo40@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I believe this has already been fixed by change 1d49eb91e
 'ipmi: Move remove_work to dedicated workqueue' by moving to a dedicated
 workqueue.
 Can you test against the bleeding edge kernel and see? Thanks, 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mzI2k-0004Bx-Li
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix UAF when uninstall
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

I believe this has already been fixed by change 1d49eb91e 'ipmi: Move
remove_work to dedicated workqueue' by moving to a dedicated workqueue.
Can you test against the bleeding edge kernel and see?

Thanks,

-corey

On Mon, Dec 20, 2021 at 02:55:20PM +0800, Wu Bo wrote:
> Hi,
> 
> When testing install and uninstall of ipmi_si.ko and ipmi_msghandler.ko, 
> the system crashed.
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
>     	-> ipmi_bmc_unregister()
> 	    -> __ipmi_bmc_unregister()
> 		-> kref_put(&bmc->usecount, cleanup_bmc_device);
> 		    -> schedule_work(&bmc->remove_work);
> 
> T2: rmmod ipmi_msghandler.
> 	ipmi_msghander module uninstalled, and the module space will be freed.
> 
> T3: bmc->remove_work doing cleanup the bmc resource.
>     -> cleanup_bmc_work()
> 	-> platform_device_unregister(&bmc->pdev);
> 	    -> platform_device_del(pdev);
> 		-> device_del(&pdev->dev);
> 		    -> kobject_uevent(&dev->kobj, KOBJ_REMOVE);
> 			-> kobject_uevent_env()
> 			    -> dev_uevent()
> 				-> if (dev->type && dev->type->name)
> 		
>    'dev->type'(bmc_device_type) pointer space has freed when uninstall
>     ipmi_msghander module, 'dev->type->name' cause the sysytem crash.
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
> Fixes: b2cfd8ab4add ("ipmi: Rework device id and guid handling to catch changing BMCs")
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c837d54..4af3543 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3008,6 +3008,7 @@ static struct bmc_device *ipmi_find_bmc_prod_dev_id(
>  static void
>  release_bmc_device(struct device *dev)
>  {
> +	module_put(THIS_MODULE);
>  	kfree(to_bmc_device(dev));
>  }
>  
> @@ -3195,7 +3196,7 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  	}
>  
>  	intf->bmc_registered = true;
> -
> +	__module_get(THIS_MODULE);
>  out:
>  	mutex_unlock(&ipmidriver_mutex);
>  	mutex_lock(&intf->bmc_reg_mutex);
> -- 
> 2.33.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
