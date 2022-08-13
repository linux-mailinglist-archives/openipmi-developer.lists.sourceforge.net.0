Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CBE59182B
	for <lists+openipmi-developer@lfdr.de>; Sat, 13 Aug 2022 03:35:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oMg3t-0007dG-N3;
	Sat, 13 Aug 2022 01:35:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oMg3l-0007d4-Bz
 for openipmi-developer@lists.sourceforge.net;
 Sat, 13 Aug 2022 01:35:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nsLfzT0xRMRY7wJBVoTYQQDTEDN3kgwQ71wL/KOBDic=; b=UdxFl43PQnWW/cHYs/NmlNFgs9
 XlNM1SD97tKp6HyVr3pEqaSVWZjMvazq7k86AHOL0i1a+MjyVqE7RTSo3iLPF3k/rZtrlFYxoisMy
 ekQ4pQx7CuHjAYqlxm43101ynYo7qPReeGzZ2lOgHaE9TD198LrqiOoFYo17tOLECIxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nsLfzT0xRMRY7wJBVoTYQQDTEDN3kgwQ71wL/KOBDic=; b=lFqHoL048OplW5mLDwQmKIQyzz
 THdhXIRPCoRkih2jSbphRf3rkJ0nKqlIKQigEifrZt7VwDZmkeKiKgvaa8uoVLMAMXsy0qZY6yWC5
 gU5Aavij+tb0tS+cHgx/ne1k1BhvFWZqfyKeVk4yLL/dALVsfROoB6DKvlvaQEtDKktU=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oMg3h-0005gK-3y for openipmi-developer@lists.sourceforge.net;
 Sat, 13 Aug 2022 01:35:29 +0000
Received: by mail-qt1-f171.google.com with SMTP id a4so2017630qto.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Aug 2022 18:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=nsLfzT0xRMRY7wJBVoTYQQDTEDN3kgwQ71wL/KOBDic=;
 b=QTkTdfHnGVuOd+OYxaMWtxp8ViK/QI7nTtJ88VnKN4QSEbyhBmGB/P4cO+AnPkfU8L
 xltNVqdaIUoZq4Lfuq7vPdQLjPzTw1Umjgb/L1Bs/QbQFg0/q2OeJix/AIe5+cHs4CYz
 88E+/oSgKiGyHjlYPcOdibEnEx3451t/Gg7vQC0UUvocb4vNcMrOWn8KK/wVyu4x/rLw
 IfQmItPISdiDAknUH5x8WdrxJaquTXlgS5anqkRU/8NnIb0EE9pcRaCKxs6H2ZL1Df3A
 iBHx+vs02a9+BQejbqOONuq49+n4mQw1qpdWAsyurWcdHzi7CVx9mAdlOfjvC1TD0Six
 sB6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=nsLfzT0xRMRY7wJBVoTYQQDTEDN3kgwQ71wL/KOBDic=;
 b=uQiFcJqm+N1oD6FemFpGIc7nBVZzsz+tnI162AG5bJ1Xk+yV/+R5vkFaFAewEhZolg
 CmN/NKWZq4yPW8z6bhCU1ejP08McKpj5+5tYa6PFBVqm9CyQpOX4eOdZrAjq2aAj/GNg
 kS6c5NBCL+h+ta5p6JkFHhJeZIPH/F4YLPSGeAg9USqJw3k4gfxJ5ptlxg+9pnKncUps
 +GnMR2HUvDpDuu65CMYZ+nrjeGXFEY3xDbzAzYA5waL9vR7GpUmsRgxCuVVMDwxIK6N/
 nPwKDzZmlrPoKAr/ex3Vq9UeUrxTudsFmyRENm3bHVii1s2vnjq4zc4Nc6gmpq7bV/i8
 6s9Q==
X-Gm-Message-State: ACgBeo0toKDDgswArPscQ9+rE/MKZeN/2/vTO3yEQMBpPGLoCO2WbCXF
 V/Gi2kOCmNfkYDnj4Zuh0Q==
X-Google-Smtp-Source: AA6agR7w0YZUzR85svK9sdn+TBagUD0eHNX9Al72EZeYCvD43YUucOjMzSIFLHLbQ3TahMz+tAnCEg==
X-Received: by 2002:ac8:7dc4:0:b0:343:622d:5fda with SMTP id
 c4-20020ac87dc4000000b00343622d5fdamr5702614qte.197.1660354519149; 
 Fri, 12 Aug 2022 18:35:19 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 m10-20020a05620a290a00b006b5e50057basm2994181qkp.95.2022.08.12.18.35.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Aug 2022 18:35:18 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:2de0:e7c:2055:5728])
 by serve.minyard.net (Postfix) with ESMTPSA id C0DCB1800BB;
 Sat, 13 Aug 2022 01:35:17 +0000 (UTC)
Date: Fri, 12 Aug 2022 20:35:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
Message-ID: <20220813013516.GJ2939323@minyard.net>
References: <1095.1660347198@famine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1095.1660347198@famine>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 12, 2022 at 04:33:18PM -0700, Jay Vosburgh wrote:
 > We have observed issues wherein the IPMI driver will sleep forever in >
 uninterruptible wait with mutexes held (specifically, dyn_mutex [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oMg3h-0005gK-3y
Subject: Re: [Openipmi-developer] [PATCH] ipmi: don't wait forever when
 querying BMC device id
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
Cc: openipmi-developer@lists.sourceforge.net,
 Ioanna-Maria Alifieraki <ioanna-maria.alifieraki@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 12, 2022 at 04:33:18PM -0700, Jay Vosburgh wrote:
> We have observed issues wherein the IPMI driver will sleep forever in
> uninterruptible wait with mutexes held (specifically, dyn_mutex and
> bmc_reg_mutex, acquired by __bmc_get_device_id).  This occurs ultimately
> due to a BMC firmware bug; the BMC will fail to respond to requests,
> apparently related to the request rate, and the current logic will wait
> forever.

This really isn't the right fix.  The state machines running the
interfaces are required to time out after a period of time, usually
5 seconds, but that depends on how the hardware is behaving, or
misbehaving in this case.  So though these are not timed mutexes, what
is running below should be timed, so it shouldn't be necessary here.

What is the particular hardware involved?  The buggy hardware may be
exercising a software bug.

-corey

> 
> When the problem occurs, as each successive process queries the BMC,
> they will block in D state waiting to acquire the mutex, and with time
> the machine hangs. The BMC vendor has agreed it may be a hardware fault.
> 
> This patch addresses the problem by replacing wait_event() with
> wait_event_timeout(). If the event times out (meaning the problem has
> occurred) the bmc->dyn_id_set and bmc->dyn_guid_set are set to 0 and the
> process eventually returns.
> 
> Fixes: aa9c9ab2443e ("ipmi: allow dynamic BMC version information")
> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
> Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> 
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 703433493c85..a510839853b5 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2572,7 +2572,9 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  	if (rv)
>  		goto out_reset_handler;
>  
> -	wait_event(intf->waitq, bmc->dyn_id_set != 2);
> +	rv = wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2, HZ * 5);
> +	if (!rv)
> +		bmc->dyn_id_set = 0;
>  
>  	if (!bmc->dyn_id_set) {
>  		if (bmc->cc != IPMI_CC_NO_ERROR &&
> @@ -3337,11 +3339,15 @@ static void __get_guid(struct ipmi_smi *intf)
>  	bmc->dyn_guid_set = 2;
>  	intf->null_user_handler = guid_handler;
>  	rv = send_guid_cmd(intf, 0);
> -	if (rv)
> +	if (rv) {
>  		/* Send failed, no GUID available. */
>  		bmc->dyn_guid_set = 0;
> -	else
> -		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
> +	} else {
> +		rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2,
> +					HZ * 5);
> +		if (!rv)
> +			bmc->dyn_guid_set = 0;
> +	}
>  
>  	/* dyn_guid_set makes the guid data available. */
>  	smp_rmb();
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
