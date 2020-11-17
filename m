Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A7C2B60FA
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 Nov 2020 14:14:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kf0oo-0002Au-VK; Tue, 17 Nov 2020 13:14:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kf0om-0002AT-TF
 for openipmi-developer@lists.sourceforge.net; Tue, 17 Nov 2020 13:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AsagFz3qpxvVnJRhGWKP2r3LdabVn8VjcVj7U5Klrqw=; b=mjtxiyl2wEsa9ko3IyD4yukLhX
 b1Z+662oZTbU1c/feH6DLJmSgZ/tW0WfV85Y0jcTbWCS49MFDgaqiFt/11mkl+DWMKtjkFtx2VNUp
 RcgYfaWkE3EoAPNrJQY4Ckirzj+tmbb6vgj+/vv2tdWzAS8FT7V1uFSFHBiTbbOpN28w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AsagFz3qpxvVnJRhGWKP2r3LdabVn8VjcVj7U5Klrqw=; b=RY/u9UtR2RGxV/Cc3WS6vnAtmc
 YOLuhyzaKQoARSiBlGAaVYAsePAustmaXp3eG5yXyFnkoTQG7X5eDFFb7hv5EzW6dJKrjiku5/Ndk
 IVcIVTSgkisa98oicK9c74h1WcmWpZOEDIRq5paAuNbUyEb/E59IXxEHTpvL19NFWFao=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kf0oi-000a0t-H9
 for openipmi-developer@lists.sourceforge.net; Tue, 17 Nov 2020 13:14:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id o3so8773939ota.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 17 Nov 2020 05:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=AsagFz3qpxvVnJRhGWKP2r3LdabVn8VjcVj7U5Klrqw=;
 b=majB0eflvTZCnsjAsfnZsNXqpawuau5y4+fJhgwuuqiCP0xVrd6B1KkxkGe7ZHyYU4
 jKoyt4r1Mfvcnsx9tYLr6e6T1spacTbgHuwy/akI8xg3OtqCGqa/Nq+VCbgUFyAwSAfn
 lDgRyU8JHoYVVDEa/BB6pnwenkJaDYUyX24mO+0LnM2OVylEZDqZsc2jKejD5LF9BpcR
 mRpy8nQHrV5pOfDcnaQF7VVLFWmsISTfSpuXIdeACocGlN4BbB4zE4butjnCSA6BUWhv
 vgSrsBca/vRSe7tWnpEH8hPxhpD8yCXXvDkcCK1lLsyyaMXQedVOlfsy+htriMGMTQ8o
 SEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=AsagFz3qpxvVnJRhGWKP2r3LdabVn8VjcVj7U5Klrqw=;
 b=N1IvnBDKQ4j1bYLiT+fQxbxlTt21M6zEVcMrBSo1d64CM86SHXpoFFEuTdgUUvoBzu
 4HjBdgylxOXguJ0uFsEmAR6jcuxatwAg3bsJ5K3W8saDyqcu44GI/BIib6gMvy2KNelF
 ZgeJRlt3pCM3lLYSz81S+3o4cD++YoDFyqY3vjj4Q1ol6jR79XN/Y4rNqiM7sBh8HMDF
 VnTIhzrqNlJR16VgbsLmdgQk03hidW7g1LjXoo+hXpJ6xFftK/eOwXYvj9Ou/E0XwpXM
 0HvDxIM31mtHD1AlLCLzS5DWeKmjMNltyYfrIGtkKJoX9hOOqabH8g1Ox94RtBjGdij0
 TyoA==
X-Gm-Message-State: AOAM530I6mkUdjUrC4o5vbjLmB+FQ9/m1v084NWGnQ3s/Cd2O1li5QaL
 o6TasPAgkmR+DOSxUGkNnsuIfPj/jqz3
X-Google-Smtp-Source: ABdhPJyKZn00h7XgR3FLqYlpXYY/rrlfnfyXcZ8qxAbNzeMsbVYqgp/tRBAQSFSYYhpRd5BrCbJEzQ==
X-Received: by 2002:a9d:6351:: with SMTP id y17mr3012191otk.68.1605618874859; 
 Tue, 17 Nov 2020 05:14:34 -0800 (PST)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id x18sm436917otq.6.2020.11.17.05.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 05:14:33 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2568:ae33:2356:c8f1])
 by serve.minyard.net (Postfix) with ESMTPSA id 8B574180048;
 Tue, 17 Nov 2020 13:14:32 +0000 (UTC)
Date: Tue, 17 Nov 2020 07:14:31 -0600
From: Corey Minyard <minyard@acm.org>
To: Yejune Deng <yejune.deng@gmail.com>
Message-ID: <20201117131431.GF3710@minyard.net>
References: <1605511807-7135-1-git-send-email-yejune.deng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1605511807-7135-1-git-send-email-yejune.deng@gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kf0oi-000a0t-H9
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: replace
 atomic_add() and atomic_sub()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 16, 2020 at 03:30:07PM +0800, Yejune Deng wrote:
> atomic_inc() and atomic_dec() looks better

Yes, that's a little neater.  Queued for next release.

Thanks,

-corey

> 
> Signed-off-by: Yejune Deng <yejune.deng@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index f78156d..32c334e 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -495,7 +495,7 @@ static void panic_halt_ipmi_heartbeat(void)
>  	msg.cmd = IPMI_WDOG_RESET_TIMER;
>  	msg.data = NULL;
>  	msg.data_len = 0;
> -	atomic_add(1, &panic_done_count);
> +	atomic_inc(&panic_done_count);
>  	rv = ipmi_request_supply_msgs(watchdog_user,
>  				      (struct ipmi_addr *) &addr,
>  				      0,
> @@ -505,7 +505,7 @@ static void panic_halt_ipmi_heartbeat(void)
>  				      &panic_halt_heartbeat_recv_msg,
>  				      1);
>  	if (rv)
> -		atomic_sub(1, &panic_done_count);
> +		atomic_dec(&panic_done_count);
>  }
>  
>  static struct ipmi_smi_msg panic_halt_smi_msg = {
> @@ -529,12 +529,12 @@ static void panic_halt_ipmi_set_timeout(void)
>  	/* Wait for the messages to be free. */
>  	while (atomic_read(&panic_done_count) != 0)
>  		ipmi_poll_interface(watchdog_user);
> -	atomic_add(1, &panic_done_count);
> +	atomic_inc(&panic_done_count);
>  	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
>  				&panic_halt_recv_msg,
>  				&send_heartbeat_now);
>  	if (rv) {
> -		atomic_sub(1, &panic_done_count);
> +		atomic_dec(&panic_done_count);
>  		pr_warn("Unable to extend the watchdog timeout\n");
>  	} else {
>  		if (send_heartbeat_now)
> -- 
> 1.9.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
