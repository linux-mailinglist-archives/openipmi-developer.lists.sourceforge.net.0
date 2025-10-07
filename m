Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E77BC140A
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Oct 2025 13:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=08sGAs8l2qhYSvV/wr3vkGxGBPy3Ji81RvBWQCA1izU=; b=FQnSg403wVuJdAd961O9tfRKkB
	oG4P1fgANrGu5updo0F7XoCrKB//Qz+elGJzgpz1b/qfi84fRQo2OargxaMRS/fWIPz6sx3rOZwzL
	24vH2ScEf99GfvSK40bUTFw/1LtK4wTld5EqcJhYuyLAJ+lVsah6syAC6mCdxhsJG2G8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v6691-0007u7-8S;
	Tue, 07 Oct 2025 11:46:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v668z-0007ty-I5
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 11:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KEMaxv3BxiBCDuohapV59T47+AmE8saqxvqjqkQ5Wcs=; b=Q/0/ZcEA4MQqcE4XD3BCnWq/SS
 vE/xfpAqC1e2qPaMSmFJb0Ty70+l9mdFD4UTtbeGqCwX3UVV4fatqfHVEA0H7lBv1lYlKYaWq2nU7
 5xPmrH6GHe/wgFMBdhpNeGPIBDTeCwn8kTtQBLGWIGZpsug6E9V1Ol/r0qeGVVLWDSWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KEMaxv3BxiBCDuohapV59T47+AmE8saqxvqjqkQ5Wcs=; b=Ot36x4go0SaM5RRZcDTz0CqXHP
 8VllPcXDDkgZMQUe/5j3Lkz0o4X2B2r6UseRpd2P0f8OvR/SyHwAdDGGom/QFlMiM91yWfMTX3PUW
 jkbnKiTSXot9xZICdYasb/OQUkcMeiYes8paaKncyMcZNCZt8enyb5xQ5AVoBb5isXA8=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v668y-0002wW-1A for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 11:46:13 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-7bcfafec537so4387207a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Oct 2025 04:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1759837561; x=1760442361;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KEMaxv3BxiBCDuohapV59T47+AmE8saqxvqjqkQ5Wcs=;
 b=GIwXvmIknEjiKkJl4FK5MyPEpqf2o7hhx70jPcs052pvM/ehfkBuBHb9f7xnuVxhrA
 V/hnKvWd9DfscsTF7hQ7u6JrGjxar+yF/Es2yDaaCFkIyw/lYjy9FvHU1+WqkatKgYBJ
 EUWU6yZCdPiGR0ScrPi33hyG4uyJxrmvvAh1SyZJd+Kdca4SrnLJy/D1YCDdJO/Z55Eb
 9C5s/Hh9E0xvqifGu+2UAnY9HgnIVILBpT+Qahr7JB0tsQO7wOqyv+dQk3EUom4ec9me
 dWkeC7Ob36dtNw/UF3SE9a6Yy5UCyzZM8uMKfEliUQqSVqqL1Jq79fEJePrudcEYSJly
 OfwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759837561; x=1760442361;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KEMaxv3BxiBCDuohapV59T47+AmE8saqxvqjqkQ5Wcs=;
 b=L2mimHTYz9BpOd9AV7+2hVkhs/vJrqT+a/65lNwLxc2DGcCnco5GN9VvjtPVuOL6Gk
 sGSlH66X19YTo1e8d9JopyY9Ml9diKw6GKRaE6AGvFCNaba+0gavRTV6p1YQSVBNrJvB
 h/e8izHQHJdkEssPF32hU37Jq40WvKcz6mxMLXML5WkWjscNjoW0izagtQFF+ElRArgV
 gyT+Nda+liOs8N59RhF9ftSpR7MYYe2vllxHBCGaRAR/uu773I4h2OZ0+PorSOL4m0L6
 bI/xwuKWYHF1+fG5RtmcBdOf/R7fVloIoIeYi3AjcvFqQMKsoj64tkrZjEqRldZjUKJC
 UfLA==
X-Gm-Message-State: AOJu0YwP1JkDCPWbGwohvebTxujMSPQIqXGnhlDKKTIpglbw1z5dCadW
 jMvPDJRCiioi/9yakA/Ys54j9bSf/x4A4ORcxA0NiArc7Ryd60j6wd4IqOKAml/iZNg=
X-Gm-Gg: ASbGncuAz94Kqx2dKjGV25R14wfS9Sg2EMKFbPOK/Pz5TqTlkVpUQxY52IbUShL8xtE
 MxXJbq7IGThxKfYdCdZyDL4CcrjGUl9PaM9sBx8x4cG3SvU2gRy2Xfxx53Uw8Ukwx5cypX2JT9u
 gWuXmwIACwLJJbgBB8AM1HaBm8398v7ysz5OVTDiCRNI32oD1GP1OKGDhUuVQ8DVyaA/4okE0QC
 D6WMmUmHHJsZTGmcO8d4l1IRB0ulaMphX/Xsx3zL9uy1sb2MkxLJzQplIE7Cg0V0AzVZ4yXhFmp
 eWhrwoMb4GoTabG8udW4IS7XUdPfzBhU2U9b+XDtlF2b9LnJCTGmEtC8SpZdiS00qpN1M8aHWsM
 s9fOWselQ1KQHO9+F/69hTwZlXSS/yIZSE3MYwHWfDF+CX9NiTw==
X-Google-Smtp-Source: AGHT+IEJYj2mzM7UxghzpnE7ZizpCtChcl1w+w9JZOnMjgORq5FS20KxP3V46mcECRKJiHPODwX4tA==
X-Received: by 2002:a05:6830:2b1f:b0:790:710f:60e3 with SMTP id
 46e09a7af769-7bf772bd7fbmr8108560a34.23.1759837561330; 
 Tue, 07 Oct 2025 04:46:01 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:52ef:e8e2:6979:b8d1])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7bf43028a10sm4538093a34.22.2025.10.07.04.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Oct 2025 04:45:59 -0700 (PDT)
Date: Tue, 7 Oct 2025 06:45:55 -0500
From: Corey Minyard <corey@minyard.net>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <aOT9c1ULJolUHPSA@mail.minyard.net>
References: <20251006201857.3433837-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006201857.3433837-1-linux@roeck-us.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 06, 2025 at 01:18:57PM -0700,
 Guenter Roeck wrote:
 > Prior to commit b52da4054ee0 ("ipmi: Rework user message limit handling"),
 > i_ipmi_request() used to increase the user reference count [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v668y-0002wW-1A
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix handling of messages
 with provided receive message pointer
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
Reply-To: corey@minyard.net
Cc: Greg Thelen <gthelen@google.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 06, 2025 at 01:18:57PM -0700, Guenter Roeck wrote:
> Prior to commit b52da4054ee0 ("ipmi: Rework user message limit handling"),
> i_ipmi_request() used to increase the user reference counter if the receive
> message is provided by the caller of IPMI API functions. This is no longer
> the case. However, ipmi_free_recv_msg() is still called and decreases the
> reference counter. This results in the reference counter reaching zero,
> the user data pointer is released, and all kinds of interesting crashes are
> seen.
> 
> Fix the problem by increasing user reference counter if the receive message
> has been provided by the caller.

Yes, the only interface that uses this that would matter is the watchdog
timer, which my tests don't currently cover.  I guess I need to add some
tests.

Sorry, and thanks for the fix.  It's queued for next release.

-corey

> 
> Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
> Reported-by: Eric Dumazet <edumazet@google.com>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Greg Thelen <gthelen@google.com>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index a0b67a35a5f0..3700ab4eba3e 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2301,8 +2301,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  	if (supplied_recv) {
>  		recv_msg = supplied_recv;
>  		recv_msg->user = user;
> -		if (user)
> +		if (user) {
>  			atomic_inc(&user->nr_msgs);
> +			/* The put happens when the message is freed. */
> +			kref_get(&user->refcount);
> +		}
>  	} else {
>  		recv_msg = ipmi_alloc_recv_msg(user);
>  		if (IS_ERR(recv_msg))
> -- 
> 2.45.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
