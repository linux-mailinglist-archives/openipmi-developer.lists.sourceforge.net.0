Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE7637FB65
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 May 2021 18:21:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lhE5y-0006u7-CX; Thu, 13 May 2021 16:21:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lhE5x-0006u0-Vr
 for openipmi-developer@lists.sourceforge.net; Thu, 13 May 2021 16:21:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dgHsi4uL/mIogUUPS9S351fL40I/K3+T9vuN9hTTz7w=; b=KhxjQNvsTmYLWrt8iE7K30jjq6
 2WqjoHCB6eOyvA+14M5/IOD6dkpyW99+Sqsmitdx8cLhYXt41DJgjfiG498JVMLYN0wikQZyJLgmz
 dfJFd+ZFIKUIRyFnF3a8AczdRbj7N1cvlQOrgyLsOfF4JTcmkWRY3XL5umWZm81shChY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dgHsi4uL/mIogUUPS9S351fL40I/K3+T9vuN9hTTz7w=; b=Qz14IlpM7fOMX2dDUKNGDUu9Ls
 w5+X4UR49xNSq63/M66ttjryeywKbhBOJ6LHG9ZJkeEx1bKbjOyUc5pQlLtnGv0vukBbiT+68gzdH
 V9CtgQzqG9UGI+qpgjEa80n9AIWi5naSrUcoH5dOnMMv/rsnj2dbBpH9lHGGMCGuehFs=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lhE5v-0001W9-JO
 for openipmi-developer@lists.sourceforge.net; Thu, 13 May 2021 16:21:55 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 d25-20020a0568300459b02902f886f7dd43so10616986otc.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 May 2021 09:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=dgHsi4uL/mIogUUPS9S351fL40I/K3+T9vuN9hTTz7w=;
 b=iCVdZl0Yn608I/Ise9u2VIbuQosG+fyguuaj2b/r9pzeoPbxOttg4bEjdOO1lKLC5f
 rLc8KnRcMt5qSnxEemOIyz0H5szo7z1ww+3ovDtnVUnQHzytFEldNouMimQj7H8eVGz3
 /G4d02VBfKYrWVjoWNN3KLMC1kBNk2UrcDGcxQVIT1KrCrnFMj6wqoTHE7Skqm4f5zps
 SJUIxHdm3UgIdEpxbPRhzVGbXaKHsXZsH3IDlZJa+hfTVu453XxPq6PPBDxT3P6gaeNq
 06ttTJshZB7N2dotA45ABZXy+hI7aaEuMvJe5eQHVkpP4+VfFBE+9BLxywanlfkRluRp
 ZGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=dgHsi4uL/mIogUUPS9S351fL40I/K3+T9vuN9hTTz7w=;
 b=YjuYx6SSyH2867jnwMAp9WFcxi1rFRpvWqWbVJv8fBuIvb4mgmORnXnvPyn++wNG3Y
 LXdoQXPgKArsOBombq+9kY41JDuM2AjgySrze9uKPc3eU0OS5gc2tvyjEHivmny+irbY
 6NHPP19jdRiGsP3/cUbxNNQ/W18f0rc9VtIR7dXk7pIDAtcvEfS+EgaaCasSgA9tOCzz
 TP0fauGWJDoZbIK7QEiu4wgTn57yIBln1NXSIAo0lZcneOC05Bt3cJg0+XhWHLulyFVl
 5ZoXBjoRoKA/YRVZlSCpZf4sTK+pdR4+Wq/9WrxvTzmcuzTKzX7Ew7/zO4y1sw+7U+oP
 VVHw==
X-Gm-Message-State: AOAM5339luQH8k+n3RG0szI8jSlW4pFRB0eDXDInQoVYQDS3ZMtnf845
 7l29ZD1WFbMIaXv3hHZ2qDI/8zbVwg==
X-Google-Smtp-Source: ABdhPJyYLp5S/qQBA1OuEVBcW0m4KEGrpE/QwsI8w/jV7EwdlSAbGoLiUdk0ZupldjNaSG1FddaCMQ==
X-Received: by 2002:a9d:7a88:: with SMTP id l8mr28062977otn.185.1620922906348; 
 Thu, 13 May 2021 09:21:46 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id r189sm683530oif.8.2021.05.13.09.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 May 2021 09:21:45 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:412b:6b1b:237c:6ae7])
 by serve.minyard.net (Postfix) with ESMTPSA id DCEC5180052;
 Thu, 13 May 2021 16:21:43 +0000 (UTC)
Date: Thu, 13 May 2021 11:21:42 -0500
From: Corey Minyard <minyard@acm.org>
To: Petr Pavlu <petr.pavlu@suse.com>
Message-ID: <20210513162142.GA2921206@minyard.net>
References: <10a41bdc-9c99-089c-8d89-fa98ce5ea080@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10a41bdc-9c99-089c-8d89-fa98ce5ea080@suse.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
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
X-Headers-End: 1lhE5v-0001W9-JO
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: Stop watchdog timer
 when the current action is 'none'
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
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, May 13, 2021 at 02:26:36PM +0200, Petr Pavlu wrote:
> When an IPMI watchdog timer is being stopped in ipmi_close() or
> ipmi_ioctl(WDIOS_DISABLECARD), the current watchdog action is updated to
> WDOG_TIMEOUT_NONE and _ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB) is called
> to install this action. The latter function ends up invoking
> __ipmi_set_timeout() which makes the actual 'Set Watchdog Timer' IPMI
> request.
> 
> For IPMI 1.0, this operation results in fully stopping the watchdog timer.
> For IPMI >= 1.5, function __ipmi_set_timeout() always specifies the "don't
> stop" flag in the prepared 'Set Watchdog Timer' IPMI request. This causes
> that the watchdog timer has its action correctly updated to 'none' but the
> timer continues to run. A problem is that IPMI firmware can then still log
> an expiration event when the configured timeout is reached, which is
> unexpected because the watchdog timer was requested to be stopped.
> 
> The patch fixes this problem by not setting the "don't stop" flag in
> __ipmi_set_timeout() when the current action is WDOG_TIMEOUT_NONE which
> results in stopping the watchdog timer. This makes the behaviour for
> IPMI >= 1.5 consistent with IPMI 1.0. It also matches the logic in
> __ipmi_heartbeat() which does not allow to reset the watchdog if the
> current action is WDOG_TIMEOUT_NONE as that would start the timer.

Yes, I believe this is correct, though it took a bit to be sure :).
Applied for linux-next.  I'm also requesting backport to stable kernels.

-corey

> 
> Signed-off-by: Petr Pavlu <petr.pavlu@suse.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 32c334e34d55..e4ff3b50de7f 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -371,16 +371,18 @@ static int __ipmi_set_timeout(struct ipmi_smi_msg  *smi_msg,
>  	data[0] = 0;
>  	WDOG_SET_TIMER_USE(data[0], WDOG_TIMER_USE_SMS_OS);
>  
> -	if ((ipmi_version_major > 1)
> -	    || ((ipmi_version_major == 1) && (ipmi_version_minor >= 5))) {
> -		/* This is an IPMI 1.5-only feature. */
> -		data[0] |= WDOG_DONT_STOP_ON_SET;
> -	} else if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {
> -		/*
> -		 * In ipmi 1.0, setting the timer stops the watchdog, we
> -		 * need to start it back up again.
> -		 */
> -		hbnow = 1;
> +	if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {
> +		if ((ipmi_version_major > 1) ||
> +		    ((ipmi_version_major == 1) && (ipmi_version_minor >= 5))) {
> +			/* This is an IPMI 1.5-only feature. */
> +			data[0] |= WDOG_DONT_STOP_ON_SET;
> +		} else {
> +			/*
> +			 * In ipmi 1.0, setting the timer stops the watchdog, we
> +			 * need to start it back up again.
> +			 */
> +			hbnow = 1;
> +		}
>  	}
>  
>  	data[1] = 0;
> -- 
> 2.26.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
