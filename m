Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA93248E6
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Feb 2021 03:34:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lF6UO-0003wq-Ka; Thu, 25 Feb 2021 02:34:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lF6UO-0003wk-6i
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 02:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gw5AsEi9tBgpVKY7ofRNFe4fDBYTxPVP1qnsuATHTzw=; b=AeI1BUqwV0R05Iodo1tOpgVNAi
 e2niKdSdnJQ8CaQYiHHjv4L1+C74po7uRodMV7hZobaJ+NNcZfB2ktBC2M5r8K2Ld48Mb8/tpvuJ+
 mThXUd3ymy6DTKi3DvG6lIlmiQgznsVWyvFdsOE70u1Qe1lDSSjbZQDu/Ce4Vu4qyFeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gw5AsEi9tBgpVKY7ofRNFe4fDBYTxPVP1qnsuATHTzw=; b=hOCj61ms47GZ0awNrA3C8piFy4
 YH2/f71r7+p6GzzVDRYIelggK6sIDMCtgTy+YwosmNg4M9/v5/3AuKXOgjw206Jb9rV+O0l+++ip3
 yGDdvnuwy08cvSyxXGvEQLNRMOq702cgCAINA1w5rDTQpo5Ckiqp8gHIEaCbzev+iocA=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lF6UD-0005Eg-TR
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 02:34:52 +0000
Received: by mail-oi1-f180.google.com with SMTP id z126so4664207oiz.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Feb 2021 18:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=gw5AsEi9tBgpVKY7ofRNFe4fDBYTxPVP1qnsuATHTzw=;
 b=tuLpYoVmoqHooPhX7v+lbmLTJxJJXj4+tGrij8Cb0BRYhrBpQD5tgTPgYV+E8I01HH
 mhY2wq0lSVOu0CMJsyNWyQ2zlouw9GScLWVsJO/sril4d8i5mAfdP1wVegAdBwNfuqNx
 V7siqpNHVfGI89eHoHjd7MpSjqn3BEwoDmeANyi5CrUWW1yI4FkOn8bX/IJFiD2lOfx4
 qYzo1q/vga2nr1+yKNdUwjXo8TkguUQpAyJ7FgtmHbMO/kGUBFNtI1oIOuShZ4L05hzN
 u/SIQZerHHhM1PYXczdniHuJhfG3TW7h+52+O+iXQI3BstoVFenjmf/vcsNtPzeBj3GD
 blcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=gw5AsEi9tBgpVKY7ofRNFe4fDBYTxPVP1qnsuATHTzw=;
 b=TCZKkn5apLD3hefd9ZEkHJ9A82fjdjvWjLdyWmD0M6wZbRatbSPbUNO9zhI6ujCPgD
 FqihZaLNKDthd/gEJb5LFKSEYms5RUCL9CJMBlmAaTnLleGIRl+WB3i8dY5wZm6QZt0E
 V8hzU579sCCAUJQuT0nojk4A2NgW8t2GiSzpmXfyRrjgqviVuH23UXzMtcQDasOb4n8h
 tgGBpOmEUYvVsjM28+1Cpc/y6xXzBIfVvQ4Mz2Ogdx4Vi+RPx4gIYdagZ8xfFzZgZHZP
 ralCw6/yWozJCLjyt2/pjeNsgTVgN5ZnVrVLO6m/RXs7+BSJWjDfqybSsWbNNzCGMzpe
 1T4Q==
X-Gm-Message-State: AOAM5329ccprDQzTpAJBCkSVkXuW8DggiezznUUqdbHMdkCZOK18JA4I
 m8zkQpgsQrSA7DWCo+073404sNjtIw==
X-Google-Smtp-Source: ABdhPJxKVdMW43WB5QjDv8o2v8AA8gn9GSyBBJWGzFCXQTZ7PQVarG+xS+WKjwhW4ZkDZCGPk3EG/g==
X-Received: by 2002:aca:1907:: with SMTP id l7mr537103oii.28.1614220474473;
 Wed, 24 Feb 2021 18:34:34 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id n11sm739850oij.51.2021.02.24.18.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 18:34:33 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b4ad:ea05:882d:77a6])
 by serve.minyard.net (Postfix) with ESMTPSA id 9EAD2181F00;
 Thu, 25 Feb 2021 02:34:32 +0000 (UTC)
Date: Wed, 24 Feb 2021 20:34:31 -0600
From: Corey Minyard <minyard@acm.org>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <20210225023431.GB5988@minyard.net>
References: <20210222164158.899-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222164158.899-1-jae.hyun.yoo@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.180 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lF6UD-0005Eg-TR
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add additional conditions
 for retrying get device id
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

On Mon, Feb 22, 2021 at 08:41:58AM -0800, Jae Hyun Yoo wrote:
> From: Terry Duncan <terry.s.duncan@intel.com>
> 
> Rarely but still failures are observed while getting BMC device ID
> so this commit adds more conditions to retry to get device id.

I suppose this is ok.  Any more and I'd say just retry on any error.

-corey

> 
> Signed-off-by: Terry Duncan <terry.s.duncan@intel.com>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
>  drivers/char/ipmi/ipmi_si_intf.c    | 5 ++++-
>  include/uapi/linux/ipmi_msgdefs.h   | 1 +
>  3 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c44ad18464f1..decd33535ff7 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2449,7 +2449,10 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  	if (!bmc->dyn_id_set) {
>  		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
>  		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
> -		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
> +		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR
> +		     || bmc->cc ==  IPMI_TIMEOUT_ERR
> +		     || bmc->cc ==  IPMI_RESPONSE_UNAVAILABLE
> +		     || bmc->cc ==  IPMI_NODE_BUSY_ERR)
>  		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>  			msleep(500);
>  			dev_warn(intf->si_dev,
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 5eac94cf4ff8..c315f3fb0fc2 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1348,7 +1348,10 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  
>  		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
>  		    || cc == IPMI_DEVICE_IN_INIT_ERR
> -		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
> +		    || cc == IPMI_NOT_IN_MY_STATE_ERR
> +		    || cc == IPMI_TIMEOUT_ERR
> +		    || cc == IPMI_RESPONSE_UNAVAILABLE
> +		    || cc == IPMI_NODE_BUSY_ERR)
>  		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>  			dev_warn(smi_info->io.dev,
>  			    "BMC returned 0x%2.2x, retry get bmc device id\n",
> diff --git a/include/uapi/linux/ipmi_msgdefs.h b/include/uapi/linux/ipmi_msgdefs.h
> index 0934af3b8037..dbadbad71930 100644
> --- a/include/uapi/linux/ipmi_msgdefs.h
> +++ b/include/uapi/linux/ipmi_msgdefs.h
> @@ -69,6 +69,7 @@
>  #define IPMI_ERR_MSG_TRUNCATED		0xc6
>  #define IPMI_REQ_LEN_INVALID_ERR	0xc7
>  #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
> +#define IPMI_RESPONSE_UNAVAILABLE	0xce
>  #define IPMI_DEVICE_IN_FW_UPDATE_ERR	0xd1
>  #define IPMI_DEVICE_IN_INIT_ERR		0xd2
>  #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
