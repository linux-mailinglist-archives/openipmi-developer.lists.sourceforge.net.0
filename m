Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BBD68B088
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Feb 2023 16:15:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pOgjw-0001ZL-13;
	Sun, 05 Feb 2023 15:15:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pOgjv-0001ZE-1D
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 15:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2byMz+/6Sh1TLllSwNgLGo9KhlhjlVKEdxXfG0cTpSk=; b=NzqJ/lUHfW4m9SMn6OkyuOL5Yo
 ndFw9bq+9zPxfXWw+EBt8H3Yvr3/4mZXGEpGAaXCn8tzxHzaATrtoERhGTJRIBJn5HNsq9msZ9r9v
 z7TzppbrSg6DsbrKbPHBo1seh1lWkHD2L9/rod6u7dATXmw8tr5iC8i9Ld8+PTR4CV00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2byMz+/6Sh1TLllSwNgLGo9KhlhjlVKEdxXfG0cTpSk=; b=NbYLLQJBpe3Q6L+L4qQ9q4AHbD
 AuwvjQPkFd2m+rzyJbz94z5DyH0YLVaIp11zgcakXQ0lYmrOF/pEK3JRlFinq37MACY0Vf4nDaXun
 GzprYwdPK2RzAZGpqUlYGNe2aLm4DFRsdHriivMJUPiLlCHRwRIKWAruBmSyRS/h85LE=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pOgjs-00Bt0W-I4 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 15:15:34 +0000
Received: by mail-qt1-f177.google.com with SMTP id 5so459001qtp.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Feb 2023 07:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2byMz+/6Sh1TLllSwNgLGo9KhlhjlVKEdxXfG0cTpSk=;
 b=bM1UPGVlukg5IZQvBlSsUkfeimYyh6tojk94DiSb623M5M8KDgOCUzzfiNdo9pIhba
 X0ju+lS1ikt2avaAwaZX6+ypsch9Kzgnh7v5wYacdHkVHOoTg1yMEtSGti/f+NU8dFbk
 olYXnyOfQ2TCRT7DR+EHomTRHXEAT5tC/FxLNiP3m4YsziYxMDUikSN/0r6cIR2r5lGD
 Tbcvzj7ZH3bxLT4Fu6s8h9fPjr3nPZim0XGZRnyTj27DZjsGkSPFSwewg0LJqdHOjkFH
 mP4U2jfYpJYXfZdjxU/YFXiz18l4yU6w/ZF/i40JCW8QQn4PlHds8xB290MfvjBlZjOO
 D3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=2byMz+/6Sh1TLllSwNgLGo9KhlhjlVKEdxXfG0cTpSk=;
 b=LE8yPJ7OJHSagDHeFloTPI/2YfL4/IzXxZSeuEu89q7OhAVLZ3MRPyx0GCBWrcGJaD
 UyZuGBGvKOdgJAhlvYTFps59jB4wxcgE4vFgM2PGsRGhEgLrKP/2s/GY0GCY33udcwpo
 A68LmN4XV8Sl7d/b64kFlxJUdHNr8eJZA6lyUwcKU9HrE8fSyrTWcwrAvINfDF3AZXfs
 XhLKV0xIWqOGc9ZpIBsuXGO0wbydZPl57YscyYYVXbsIK5t/kSkDlKjO32fZmM2PBWRN
 NKBzB06uNWKFhJwzx7/BrL6R3FCoELIF44xVUL0uR0f3hT7mub5EHn/YcFW8SYjs0/0p
 myEA==
X-Gm-Message-State: AO0yUKUI6154X42bEXxooMA82EiJvmJjLnHuLVuYAjbT5J+i4MA+OjiV
 RMPvQWh2F/1a+ZGq9Tu6b+Ebq70N1KcD
X-Google-Smtp-Source: AK7set93djiaBUljyrNcJkGIJV3koL2pnqGsfFk+j5qwUKO3nKUi/O4AiomLyV9rXpYjXRGhqrILXg==
X-Received: by 2002:ac8:59cc:0:b0:3b9:b1ea:2d0f with SMTP id
 f12-20020ac859cc000000b003b9b1ea2d0fmr31019703qtf.34.1675610126405; 
 Sun, 05 Feb 2023 07:15:26 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 u25-20020ae9c019000000b0071c9eea2056sm5684592qkk.14.2023.02.05.07.15.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Feb 2023 07:15:25 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4d8a:a95f:e506:25f6])
 by serve.minyard.net (Postfix) with ESMTPSA id 8F60C1800C0;
 Sun,  5 Feb 2023 15:15:24 +0000 (UTC)
Date: Sun, 5 Feb 2023 09:15:23 -0600
From: Corey Minyard <minyard@acm.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <Y9/IC9oWzxo3jjrO@minyard.net>
References: <0d8670cff2c656e99a832a249e77dc90578f67de.1675591429.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d8670cff2c656e99a832a249e77dc90578f67de.1675591429.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Feb 05, 2023 at 11:04:01AM +0100, Christophe JAILLET
 wrote: > 'This should be 'retry_time_ms' instead of 'max_retries'. Oops.
 Applied to my next tree. Thanks, 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pOgjs-00Bt0W-I4
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: Fix the
 MODULE_PARM_DESC associated to 'retry_time_ms'
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
Cc: kernel-janitors@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Feb 05, 2023 at 11:04:01AM +0100, Christophe JAILLET wrote:
> 'This should be 'retry_time_ms' instead of 'max_retries'.

Oops.  Applied to my next tree.

Thanks,

-corey

> 
> Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/char/ipmi/ipmi_ipmb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> index 7c1aee5e11b7..3f1c9f1573e7 100644
> --- a/drivers/char/ipmi/ipmi_ipmb.c
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -27,7 +27,7 @@ MODULE_PARM_DESC(bmcaddr, "Address to use for BMC.");
>  
>  static unsigned int retry_time_ms = 250;
>  module_param(retry_time_ms, uint, 0644);
> -MODULE_PARM_DESC(max_retries, "Timeout time between retries, in milliseconds.");
> +MODULE_PARM_DESC(retry_time_ms, "Timeout time between retries, in milliseconds.");
>  
>  static unsigned int max_retries = 1;
>  module_param(max_retries, uint, 0644);
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
