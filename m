Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC52328244
	for <lists+openipmi-developer@lfdr.de>; Mon,  1 Mar 2021 16:21:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lGkM6-0003XN-Gw; Mon, 01 Mar 2021 15:21:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lGkKx-0003U4-U9
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 15:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IRSmv6pm33jZ1fIt/qwKgNm0CYbFandFAlC2eldA35w=; b=GzNfW+uIed8NI8hEY4zVs8gtsg
 8bvTT941GwiMotWvpOy6MehOsamp+KZbghtSATFnFuudY9Xtyh+whCHXt/K2VVmfipLHS0gzCBGgq
 Q2fWTqBPciI45qnijXozHMYIa6rZsSSsMNjotqNfPeDv2sdA6oAYMMf/pLN18CjuaNo0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IRSmv6pm33jZ1fIt/qwKgNm0CYbFandFAlC2eldA35w=; b=m9ktxsQSpsSSoddixgVw7ziSEe
 bGBsmGo9e5FXqjKplOCG5yfowYzLYto784eR4ATaTBkkjRaPHkRmtZcrPEp/NWEdv9EacGgwB2h/S
 cAV0iiPdch9ZuFVd1O0dyXwP6MB4B5XEGUw6SNPjC/mkHbvcNQjqFH+payE/jDMsKavg=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lGkKs-00A2D9-GD
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 15:19:55 +0000
Received: by mail-ot1-f50.google.com with SMTP id v12so15664578ott.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Mar 2021 07:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=IRSmv6pm33jZ1fIt/qwKgNm0CYbFandFAlC2eldA35w=;
 b=KzCEra775BJWsu0HMqPkDaWU/SYJU0JDhq+MnZsfuTXIu9jjJPtoIHM7/15ijsVZ/3
 kEslpvrbKZHjP7BEPUAIZBKqbMVYMKGiolt+uNsPRgzrVflKF+YVwkNq7+ee70/P80pa
 zRuNy8bb0HMCzf8W+Uo/LOO1KgQ29kRF5l9v0Ifoa34+kZKSl6k3U7G+pLhxhfuNx9MD
 C8geHP8Z5egl5oB/iNErIUwfz/n1FQqOvkItIgQjYkYkpaOG7mT4aj08kdBKTxxlXT0B
 IlAAg3npF5PMJIYdtJsktWpaqF27UPD9QcavatXT/TNrlwTaWDmpCwnvgHdjbz8JFgVc
 KVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=IRSmv6pm33jZ1fIt/qwKgNm0CYbFandFAlC2eldA35w=;
 b=J+Gevn7OhkW1llN5a4iMLphCmgnBhq6RgSfHzevoIbopC3firx79My20p34VVKY09y
 g1enJBjsAD0xEKY/empGLcJP+ZSqTtiPiQKfxtOfrfPqT78LG9yvvyFibqgfwmnZgEjv
 APH/PVEw2did5MbSXIiHdmU7sVaUuhRaGkGzVZq8WmlCQuD8v7OUKXcKNYZA1wM7w9rR
 ZPna1HF5Hu1bKRQT+S5WMvhQWwA4R0Q1EF3H54vO++UjptZ2D+YKdKOGXhN1ypQeL0La
 Xoojt2cRqUJv2Cn7g2IziKJA+QW/UkJWfOK+l+n5l0RBfDc5Et92FkDbc0kjfNlXoIkh
 iviw==
X-Gm-Message-State: AOAM53266r77mxqe3jqyQOfF+2+8ZVifyexdzHp6dwydQys9MKqdvkPw
 RhWAXZ2mmZoXLezrKfpWLw==
X-Google-Smtp-Source: ABdhPJzH0QZqKennTMOTsyUNz5eU+FFKi+lUPBFs/kKZHYJHjJRUtPW4Hr0oB+Sd93W1ALZkaRKS6A==
X-Received: by 2002:a9d:648f:: with SMTP id g15mr2410490otl.188.1614611984840; 
 Mon, 01 Mar 2021 07:19:44 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a23sm3829768otf.20.2021.03.01.07.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:19:43 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:dd2:7224:e6c:fce5])
 by serve.minyard.net (Postfix) with ESMTPSA id E6FD7180059;
 Mon,  1 Mar 2021 15:19:41 +0000 (UTC)
Date: Mon, 1 Mar 2021 09:19:40 -0600
From: Corey Minyard <minyard@acm.org>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <20210301151940.GC507977@minyard.net>
References: <20210225045027.9344-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210225045027.9344-1-jae.hyun.yoo@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
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
X-Headers-End: 1lGkKs-00A2D9-GD
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: Refine retry conditions
 for getting device id
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
 openipmi-developer@lists.sourceforge.net,
 Terry Duncan <terry.s.duncan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is queued for 5.12.

Thanks!

-corey

On Wed, Feb 24, 2021 at 08:50:27PM -0800, Jae Hyun Yoo wrote:
> From: Terry Duncan <terry.s.duncan@intel.com>
> 
> Rarely but still failures are observed while getting BMC device ID
> so this commit changes the condition to retry to get device id
> when cc is not IPMI_CC_NO_ERROR.
> 
> Signed-off-by: Terry Duncan <terry.s.duncan@intel.com>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> Changes since v1:
>  - Changed the condition to make it retry when cc isn't IPMI_CC_NO_ERROR.
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 6 ++----
>  drivers/char/ipmi/ipmi_si_intf.c    | 6 ++----
>  2 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c44ad18464f1..f19f0f967e28 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2447,10 +2447,8 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  	wait_event(intf->waitq, bmc->dyn_id_set != 2);
>  
>  	if (!bmc->dyn_id_set) {
> -		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
> -		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
> -		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
> -		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> +		if (bmc->cc != IPMI_CC_NO_ERROR &&
> +		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>  			msleep(500);
>  			dev_warn(intf->si_dev,
>  			    "BMC returned 0x%2.2x, retry get bmc device id\n",
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 5eac94cf4ff8..be41a473e3c2 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1346,10 +1346,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  		/* record completion code */
>  		unsigned char cc = *(resp + 2);
>  
> -		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
> -		    || cc == IPMI_DEVICE_IN_INIT_ERR
> -		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
> -		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> +		if (cc != IPMI_CC_NO_ERROR &&
> +		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>  			dev_warn(smi_info->io.dev,
>  			    "BMC returned 0x%2.2x, retry get bmc device id\n",
>  			    cc);
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
