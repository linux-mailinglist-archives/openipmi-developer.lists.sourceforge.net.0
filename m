Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 685AA72F7C
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jul 2019 15:04:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hqGw5-0005Af-W3; Wed, 24 Jul 2019 13:04:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hqGw4-0005A2-Si
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 13:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=St0OD81vvxUjVHgZdUhOHp3xMGk7dggtbpwmHrGdlCs=; b=Cuhn9y+52NOZ3puT2cwbSz9IgY
 9aXf72Q5cc2AI381/wNjnb60Tlo2MJhy1EKGkKi7Te+mgoO3oPqgQLjhHqYMtfKUNJ7i2gIZQLVaD
 QqACOAq7J6x911TSDRgyK9rUHCAYbjYoyy9OfYiHLjijme6TKKgFmN/6wl+pY9XZQVYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=St0OD81vvxUjVHgZdUhOHp3xMGk7dggtbpwmHrGdlCs=; b=aNkhW4Auhk3cI2DJrZ+9FhXYoU
 EsTDuPn2pB14awPhc2dz8HvHW1yL2LztHi72bJoQ0nkgT/hGqdcDKdz+hY25cexMxzmtWMrnA3hyI
 RSU+FM1ME8fYFtvmbotBln6ZTJpxit8/VRhd/GxzQbWphmDW2Mmuu6R6qtKA3dDKpgrI=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqGw2-00EAq2-FE
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 13:04:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id j19so9293767otq.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 06:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=St0OD81vvxUjVHgZdUhOHp3xMGk7dggtbpwmHrGdlCs=;
 b=IfAfUuZNwlAO7G27XDwU/70KmfgndhtBPb/CVvFerZOY1UsTrBAZaBsxQUu4Uq2rWV
 VM6BynX+WW5IUD54TP9OSGt86xAG7c+3wb7rIFQ8aMuksZhdN/giH03bex2NMXVAALdp
 9bWMi6AiogYkRVi+2jUaIaILcA7nMoVXOKc4nT4Q/b6i2lbeilJGuvDLqqvqo/Obc3sw
 TvHtU3ZcgzNNH9ZhDf/9mNdOtrMC8djomF0r5uL9l0hHt8F6VLq2cTH413aZApemW5Iv
 1PLpjtob4WbpnpTR1RxCy69DKvcWcdwmu/0R+RriQz61AdIpwonqdGL2neGLwbF5ToFj
 XvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=St0OD81vvxUjVHgZdUhOHp3xMGk7dggtbpwmHrGdlCs=;
 b=jt/tUIJI+BJb1pXr4hNbVusdeJpDPIROwIPb0zxEXdqi5ffrtLzG1KkavyUD4w93yY
 TKah9KQVB3tPXwPS8J67yeCDFC3GWVV8h4bp5EusjoqburwVu1EBBW9b+k55iJwLrgFY
 AxvwBp12EF1mGNPy29jW7V7e5KKYTRAkPSIZ9gIHZydaNIUvO+Xls/0k+Aj7F+LhDOEJ
 vFDFmoLQJfD/xjnFnq1CXz2y4EfmRIC9VvSoHwjG412wibPqd3/GjyPoDL++LVFMUswE
 jUP4UyHmmG9z82rrsWnk0tN7EpdALH7AS6qIZ0ILIj+iVE6ABMH+gbb97CHqTG+LFr3X
 WxaQ==
X-Gm-Message-State: APjAAAWVkKTRCd1RjwJ6DOxtXLEs7utvWqsjDaiZeKqS8VvzDZev5UB5
 uODnusc02Yf0BL5VXIgcPhP/QJM=
X-Google-Smtp-Source: APXvYqwoqN64SzSosnuwzz9M5scf3EzvSuLj58zC6HvVED2/ou7nWq+PGi7bsI3eG18k3dsZrSjeyw==
X-Received: by 2002:a9d:4703:: with SMTP id a3mr33765462otf.183.1563973432330; 
 Wed, 24 Jul 2019 06:03:52 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id u139sm16367244oie.55.2019.07.24.06.03.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 06:03:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:c4e8:4e9:949c:2f11])
 by serve.minyard.net (Postfix) with ESMTPSA id 08AF01800D1;
 Wed, 24 Jul 2019 13:03:51 +0000 (UTC)
Date: Wed, 24 Jul 2019 08:03:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20190724130349.GI3066@minyard.net>
References: <20190724102528.2165-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724102528.2165-1-baijiaju1990@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hqGw2-00EAq2-FE
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: Fix possible pointer
 dereferences in msg_done_handler()
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 24, 2019 at 06:25:28PM +0800, Jia-Ju Bai wrote:
> In msg_done_handler(), there is an if statement on line 778 to check
> whether msg is NULL:
>     if (msg)
> 
> When msg is NULL, it is used on line 845:
>     if ((result < 0) || (len < 3) || (msg->rsp[2] != 0))
> and line 869:
>     if ((result < 0) || (len < 3) || (msg->rsp[2] != 0))

You cannot get into those states without msg being set, so there
is no need to check for that msg is NULL there.  If you look
at those states elsewhere, you can see that curr_msg is set every
time you go into those states.

-corey

> 
> Thus, possible null-pointer dereferences may occur.
> 
> To fix these bugs, msg is checked before being used.
> 
> These bugs are found by a static analysis tool STCheck written by us.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 305fa5054274..2e40a98d9939 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -842,6 +842,8 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  		break;
>  
>  	case SSIF_GETTING_EVENTS:
> +		if (!msg)
> +			break;
>  		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
>  			/* Error getting event, probably done. */
>  			msg->done(msg);
> @@ -866,6 +868,8 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  		break;
>  
>  	case SSIF_GETTING_MESSAGES:
> +		if (!msg)
> +			break;
>  		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
>  			/* Error getting event, probably done. */
>  			msg->done(msg);
> -- 
> 2.17.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
