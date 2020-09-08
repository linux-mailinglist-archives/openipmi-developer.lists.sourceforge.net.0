Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A8126076E
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Sep 2020 02:08:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFRBI-00056o-Fm; Tue, 08 Sep 2020 00:08:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kFRBH-00056h-Ep
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0MQIFD0wSalUsY9jIwWCsu5F2vysByo4q9dNLulJ/BE=; b=bujo8jDYeKc7wgLHkf/mkk5yX6
 ukmK/ayasvY9LzH8Zxv4BhTn0/+fRFCTh/cu6uvNYjMsZZUyzuGz6yYpCJmQJ7KGciAqrbFn2lee0
 LaujdQDX4evcpcK6Vzhg8e1nY8g81i+NLPJWPIWTB8709OGZCDQYPrYDLywhDy8SNYvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0MQIFD0wSalUsY9jIwWCsu5F2vysByo4q9dNLulJ/BE=; b=UamNO/oWRecDOn2xZzdzmXhdBM
 oEuFnSQlC9vBC6nWx4yaxKeFW7NXSSrWC0dHZzmGLJ9wVfCo1ZEW5mddMuG2t0u1llhFJZd5QHAms
 i5YdPb/3CQVBtizEA4VRENBZakw/dgsNy3QGVb5cVIQCmqdyAuZuPab6dl7+DB9pghvs=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kFRBC-00GIoj-PM
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:08:15 +0000
Received: by mail-oi1-f195.google.com with SMTP id x14so14878794oic.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 07 Sep 2020 17:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0MQIFD0wSalUsY9jIwWCsu5F2vysByo4q9dNLulJ/BE=;
 b=YHGL1MCJ0qBeAdroqQwPzNeRgphRAZwvlt1bZQSqOdTCKQIOo1NCczfWD7rrkfEC76
 wUlyVWhTmY+o6YX9wr2V9H9ZmmXDdZXr8ofNtZKLBhbXSIuCHNUixPdDBu+qCP6lkLl4
 HlAW/r/upZQVvGXyI3DutyYz91ognzMFDJ68ukDPqZk81ZYdJfBKUIJj5GYeFKraFpRX
 sk+J0dmHR9eeWGLbdXchWHVIWSlvr7aCj8sQjD8wGCAt8wgxGnj8uQ1oTD6oIhCkB6QQ
 7LbuPmbfFp6t3OTXaPyl7Cl2gEYDOdJdmsZo9fFW3MoGIB056fUgEUfYdQPmTwv6p1MJ
 y6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=0MQIFD0wSalUsY9jIwWCsu5F2vysByo4q9dNLulJ/BE=;
 b=WfnmTJyWAGoo5uGB6Oo9hvUxwKSWpYfFPoupxWWJlWgDrgcpetFPef9ZCz/o3FMpQp
 Ci58KP6Ag+iXe/yURnqXOEDggC1yyYR/rg33VHqtBSxgU/srWSSU97B/D/IJhl/Zl4Rb
 wuZPDt7BBzlDjlBJbmlk6Y0yKurHlMQbn1FN3Fbdqx09YQYAorLIMciS/5oTRvGwPdyo
 +w+IMesL8OnA24IrFmEqJhUu8I1/1hDL4lbnTjRz65z6rmT07RCExNWVUVgyYyyJ3XZf
 RbkzxVRK222atrMNPZ7y3HGQntCDWIbV3lYg9HuB1TrIBtT4TzN3KL/zl71wVoGRkhNW
 ptxQ==
X-Gm-Message-State: AOAM533iwj56uMKCT/bfKaP3NqJ6/RR4qcbcDyq4o14GgsnCg/zv6vFt
 jVkp9pA4ZrsE2vWxVVHZgg==
X-Google-Smtp-Source: ABdhPJylqM+6LzCyyHHbYv5f+3+wRyhKMMat4iC74kHjMarIVyRYEWMM2QveN4Qjm7uF5280ucheSQ==
X-Received: by 2002:aca:fc07:: with SMTP id a7mr1085851oii.106.1599523676274; 
 Mon, 07 Sep 2020 17:07:56 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id h24sm2764562otj.33.2020.09.07.17.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 17:07:55 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:84ed:77c1:d49f:5e6b])
 by serve.minyard.net (Postfix) with ESMTPSA id C503B18003B;
 Tue,  8 Sep 2020 00:07:54 +0000 (UTC)
Date: Mon, 7 Sep 2020 19:07:53 -0500
From: Corey Minyard <minyard@acm.org>
To: Markus Boehme <markubo@amazon.com>
Message-ID: <20200908000753.GC15602@minyard.net>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
 <1599495937-10654-2-git-send-email-markubo@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599495937-10654-2-git-send-email-markubo@amazon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kFRBC-00GIoj-PM
Subject: Re: [Openipmi-developer] [PATCH 2/3] ipmi: Add timeout waiting for
 device GUID
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
Cc: Stefan Nuernberger <snu@amazon.com>, SeongJae Park <sjpark@amazon.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Amit Shah <aams@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 07, 2020 at 06:25:36PM +0200, Markus Boehme wrote:
> We have observed hosts with misbehaving BMCs that receive a Get Device
> GUID command but don't respond. This leads to an indefinite wait in the
> ipmi_msghandler's __get_guid function, showing up as hung task messages
> for modprobe.
> 
> According to IPMI 2.0 specification chapter 20, the implementation of
> the Get Device GUID command is optional. Therefore, add a timeout to
> waiting for its response and treat the lack of one the same as missing a
> device GUID.

This patch looks good.  It's a little bit of a rewrite, but the reasons
are obvious.

-corey

> 
> Signed-off-by: Stefan Nuernberger <snu@amazon.com>
> Signed-off-by: Markus Boehme <markubo@amazon.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 2b213c9..2a2e8b2 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3184,18 +3184,26 @@ static void guid_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>  
>  static void __get_guid(struct ipmi_smi *intf)
>  {
> -	int rv;
> +	long rv;
>  	struct bmc_device *bmc = intf->bmc;
>  
>  	bmc->dyn_guid_set = 2;
>  	intf->null_user_handler = guid_handler;
>  	rv = send_guid_cmd(intf, 0);
> -	if (rv)
> +	if (rv) {
>  		/* Send failed, no GUID available. */
>  		bmc->dyn_guid_set = 0;
> -	else
> -		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
> +		goto out;
> +	}
>  
> +	rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2, 5 * HZ);
> +	if (rv == 0) {
> +		dev_warn_once(intf->si_dev,
> +			      "Timed out waiting for GUID. Assuming GUID is not available.\n");
> +		bmc->dyn_guid_set = 0;
> +	}
> +
> +out:
>  	/* dyn_guid_set makes the guid data available. */
>  	smp_rmb();
>  
> -- 
> 2.7.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
