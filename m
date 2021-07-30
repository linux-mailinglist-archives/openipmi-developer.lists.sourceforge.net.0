Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E6F3DC186
	for <lists+openipmi-developer@lfdr.de>; Sat, 31 Jul 2021 01:22:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m9bq9-0005CK-16; Fri, 30 Jul 2021 23:22:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1m9bq7-0005C4-9J
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 23:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pwUK4buSZcvf3DN+FO7Z+DrF4By3Sfk7ycTiv97zWSc=; b=ODJ29eWllSULZqxOFphS9Sl68K
 xiVOOQtgEI8i9dqgg4P5pZRn8NcvWcZVY+iOPM6gSaLBspznvFHxagk4Pm7/zUQ8LdbdtdF0HM8hj
 CSVXTxq1SPOSAPfc68+h9Y/Sc1oUXTBkd5IPEs/aeh3BG5Sj0uaJ9/COpcQoBJUXp0nM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pwUK4buSZcvf3DN+FO7Z+DrF4By3Sfk7ycTiv97zWSc=; b=gxWTh6KduMJ3xXOa8hNmsTp1/O
 G/GNHwS82K/FlUE+3aD9mUnHkbagG/vZ2R7l20SdByxpb2OivQWRUNMlcZ5OEFebq2YCkI+iMHnRm
 Ws3LOYmEynpi5Z2rcKQPkpENwTQ5/1lqi9UD7aVUs6OVl3Ry7gmkVSKi3Noh04hwzDyQ=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m9bq1-0006DB-Ua
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 23:22:51 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 a5-20020a05683012c5b029036edcf8f9a6so11265706otq.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 30 Jul 2021 16:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=pwUK4buSZcvf3DN+FO7Z+DrF4By3Sfk7ycTiv97zWSc=;
 b=ANqsuxC+ISFfExBd8SDvJNuw2VBmk76xTZwXznxWPleUmVjQk76/5b72Atfvti+UvG
 7PsivDsZlAhi43o+rfLhvE1SiKXEMoY6L9patWN5jOXl0akPvMMDVR/gR2Ikh52pVwLQ
 cO28RzuOoVT0lXWhsEMXkAQllCkWzigL5/5eIHG5up++f0Zt9CIXVMDybNBsPDuJA0WP
 jEyZQ2FjgYGjczr9mM8FBiNYYJBXzAdoemXoNesqjH/MryniZJziZj2UFiGIuJKKTKou
 XDQzltZZG5sWqgK8+Vni0N4sGb1b5qRK+rMn7GJHUxH++M9H5mblhC/Ik8j6gGnAygoD
 NL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=pwUK4buSZcvf3DN+FO7Z+DrF4By3Sfk7ycTiv97zWSc=;
 b=EcwSBMhgFjJwVO/8JubeUAc8NHmWxzWA5KYDCOUVAQGLQiCYUJl6s2GgFzdvPjNO6x
 4l9ZyN7M9fZ0FEzUywQt1Ikh70qztQZ5SOhOj5NGPgxsLtE2ViRzW79mpeCT0StWy1WN
 +JYeyPXgkCANj+RGEl9Lo/dia/XmU3PjKBPrdNksgYY6/vXqNIvL66MH562rQJnAIOgn
 Qfn+d68fzfYAxWqi7qKpNtPiQlCpHPL/f+JTvivuoMXQm7l7MC9Y/IxVHFXP8yJD4YWo
 mBvosnUNhEkgZja57WbNu8rbPeSaO2ACACy/8/EZ+RgKl53FrlZpI+72/+oKbRmgfLoJ
 u5DA==
X-Gm-Message-State: AOAM531CQBWJw4Mdkj6oswj18O/qqLEDXLEANfUkmLCPUCmIY9dFGdzI
 fvUNt+qnycgHZiR854LyTyXOEen67h8T
X-Google-Smtp-Source: ABdhPJyh3Fz2Hd+JeZI8KKHXn+58U1SQu4Dle6Z99LFZInuhCZfoD+YMmorkUPE85Ekztoguw0f8vw==
X-Received: by 2002:a05:6830:18cd:: with SMTP id
 v13mr3930785ote.13.1627687359923; 
 Fri, 30 Jul 2021 16:22:39 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id i205sm544372oif.14.2021.07.30.16.22.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jul 2021 16:22:39 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:3c13:1718:6a7:97c2])
 by serve.minyard.net (Postfix) with ESMTPSA id 1D847180058;
 Fri, 30 Jul 2021 23:22:38 +0000 (UTC)
Date: Fri, 30 Jul 2021 18:22:36 -0500
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20210730232236.GE3406@minyard.net>
References: <20210730150801.GA1074@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730150801.GA1074@kili>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.51 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m9bq1-0006DB-Ua
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Uninitialized
 return in ssif_bmc_write()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jul 30, 2021 at 06:08:01PM +0300, Dan Carpenter wrote:
> I accidentally introduced a bug in my previous patch.  The "ret"
> variable needs to be initialized to prevent returning uninitialized
> data.

Thanks Dan, it's queued.

-corey

> 
> Fixes: f9714eb04364 ("ipmi: ssif_bmc: Return -EFAULT if copy_from_user() fails")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Sorry!
> 
>  drivers/char/ipmi/ssif_bmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index ce8cd8364a3f..acdb1d9cb5c0 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -80,7 +80,7 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
>  	struct ssif_bmc_ctx *ssif_bmc = to_ssif_bmc(file);
>  	struct ssif_msg msg;
>  	unsigned long flags;
> -	ssize_t ret;
> +	ssize_t ret = 0;
>  
>  	if (count > sizeof(struct ssif_msg))
>  		return -EINVAL;
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
