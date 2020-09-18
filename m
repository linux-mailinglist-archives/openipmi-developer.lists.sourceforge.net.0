Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F25E270861
	for <lists+openipmi-developer@lfdr.de>; Fri, 18 Sep 2020 23:35:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kJO2e-0000Ny-9w; Fri, 18 Sep 2020 21:35:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kJO2c-0000Nj-Dw
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 21:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G8fXqWszh3SrJ+vmT464jX1vRmpstqfB1t8xeqTC0Yo=; b=QfyioNgn0D0VG5E/mTg+EZVFrX
 RiI857vE4rE85S9fgT5dvu9qTZeS3KDRam2AcQIcIIjYBkOlpVQpZkdcHgU0+Z/ZhLWrbqJ5nzv7V
 7KlHePukQydws/rlldHbNy6i9eAxkVjRziITdmFj70EaN3aE7bdzGUTCJqJA1xaVgf6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G8fXqWszh3SrJ+vmT464jX1vRmpstqfB1t8xeqTC0Yo=; b=aqsiIRz4DPpvvuQMbYJ2lQQTnC
 lBU+ZyLqgsZQSsmlu0AYRzjvYCpiz8g7F/Yyw1cs1FQHJTkIfZ2kOAGq3rpaZHMBkgwmWC8ZHcCNW
 b6ffmQuQOV6tmxf2luurWWph21sg2Fo8TaQOcBTjJCBUcW6VXsakx0Gi8P5DkGpKVBsY=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kJO2a-00G5VP-1S
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 21:35:38 +0000
Received: by mail-ot1-f67.google.com with SMTP id o8so6737345otl.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 18 Sep 2020 14:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G8fXqWszh3SrJ+vmT464jX1vRmpstqfB1t8xeqTC0Yo=;
 b=GdO/Ghgzwl/Mhx/Xegq0ztWcGn8p4oIE76uu4RFFmou2d26T2pwnGilkiqr2Uo+Ypp
 6Nk2rwgH4GQFCzbU1QeBkeG93BhilQ2RVbHWDeLT3lj5+ttqX5X0wGDFpFs4tceNBLxt
 xlItl9igEqFtSxauRLIsXCGvYcEBvnlIu8I/G4Kq6sVlgIT6lmy0iz35pdLhiGmgiB/f
 k8qfvOKNjz/4ZWdloLbAFVxuNCCD52WIXTfBCJFxawD35jgoSCszdSep+CavaMwv1iDy
 XW6YqpsCkZnTWzRxquZPevlqswxRRFK+Iv6wimN33U/hUCyoQojd1WpLpb/XS5mT5zTr
 3rZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=G8fXqWszh3SrJ+vmT464jX1vRmpstqfB1t8xeqTC0Yo=;
 b=Lb49C71bwAfmf2gUgK5gUOUQJTww3mS7jQc2fzn2yyE9nr60TZT60fSteBlqulDBHK
 xNqXksASD2/r9ple2Eycq9oxIhJgNPqOv9NCn/qKuy54W0oHs4O8j8chYrA2p9kxxyQL
 FFx+S1fgCfvslF/T8lcixVEzN5H2EqzJjbVAFz3XlT94hxDBGDpWoLszb9WAvJz8tRTs
 tMQKLokEPmu61jWd0+Brb4JCEHVlUcbnd8k7jCf7r6b4aCjsxdLB1CPcGTBQ08CVH9HD
 oEGJEARm2ZAyMFEbyNK30vsFJGTlydgctuHeKa45CaraunA+SIaTCL6CMuGoc0X4+dlf
 wASA==
X-Gm-Message-State: AOAM533QnntOduFRejjuCe/ME1kbIcCKgjPXBRpGp5WRUgsue4z+/sn/
 EMyZDhewysuuT+Ki005Pag==
X-Google-Smtp-Source: ABdhPJzzQ3LbdTJlkgrLikXmhfwIDmXRGv9uIUSccKLWD7kSt7QdteRSDu9/sZnp3WYvQ66bw4dvzg==
X-Received: by 2002:a9d:3983:: with SMTP id y3mr9819323otb.71.1600464923116;
 Fri, 18 Sep 2020 14:35:23 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id c25sm4095600oot.42.2020.09.18.14.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Sep 2020 14:35:22 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:790b:9ad:25b1:4b44])
 by serve.minyard.net (Postfix) with ESMTPSA id 5703518003B;
 Fri, 18 Sep 2020 21:35:20 +0000 (UTC)
Date: Fri, 18 Sep 2020 16:35:19 -0500
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200918213519.GK3674@minyard.net>
References: <20200918142756.GB909725@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918142756.GB909725@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kJO2a-00G5VP-1S
Subject: Re: [Openipmi-developer] [PATCH] ipmi: msghandler: Fix a signedness
 bug
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
Cc: Xianting Tian <tian.xianting@h3c.com>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 18, 2020 at 05:27:56PM +0300, Dan Carpenter wrote:
> The type for the completion codes should be unsigned char instead of
> char.  If it is declared as a normal char then the conditions in
> __get_device_id() are impossible because the IPMI_DEVICE_IN_FW_UPDATE_ERR
> error codes are higher than 127.
> 
>     drivers/char/ipmi/ipmi_msghandler.c:2449 __get_device_id()
>     warn: impossible condition '(bmc->cc == 209) => ((-128)-127 == 209)'

Dang, I should have spotted that.  Thanks, it's applied.

-corey

> 
> Fixes: f8910ffa81b0 ("ipmi:msghandler: retry to get device id on an error")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  drivers/char/ipmi/ipmi_si_intf.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 555c3b1e4926..8774a3b8ff95 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -319,7 +319,7 @@ struct bmc_device {
>  	int                    dyn_guid_set;
>  	struct kref	       usecount;
>  	struct work_struct     remove_work;
> -	char		       cc; /* completion code */
> +	unsigned char	       cc; /* completion code */
>  };
>  #define to_bmc_device(x) container_of((x), struct bmc_device, pdev.dev)
>  
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 164f85007080..0b3dbc7e39fd 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1344,7 +1344,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  			resp + 2, resp_len - 2, &smi_info->device_id);
>  	if (rv) {
>  		/* record completion code */
> -		char cc = *(resp + 2);
> +		unsigned char cc = *(resp + 2);
>  
>  		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
>  		    || cc == IPMI_DEVICE_IN_INIT_ERR
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
