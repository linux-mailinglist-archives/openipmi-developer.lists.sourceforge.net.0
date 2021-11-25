Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4505745DC3E
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Nov 2021 15:22:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mqFdM-0005S8-Ms; Thu, 25 Nov 2021 14:21:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mqFdK-0005Rz-Vd
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 14:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RzP6b9r8+MGJsGKUfdXV3PdSyaq0SjwQnaEljKzQwcc=; b=AoDYRwjv6UjJQVXopi94Dfi88O
 D6QbQ7r+zjXiBhSZj/iu7ubLXZjsdgkH7D4bmHz5UuhqArlCHrQuvqMEVdCNJKlsdx5vM/YNh2d5v
 D8UXGmJt2ULQxDyluUK3/Matq31DoUbCbLZ/cagoHOGFRaplMGFOMHCxiEF5+1UGJ0k0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RzP6b9r8+MGJsGKUfdXV3PdSyaq0SjwQnaEljKzQwcc=; b=muFbqzJANs4YcLFwY34dOB0xCB
 KXjJBa2d/4bqifgybvSsEBzIDeJxz23/+Iu8SI2Ewr+3JCX8s4+rAKHTOtZP32this8mpbEqgjOU9
 M60eIBE5XdRLN6FwAkZbgfCp/tRd5DCwExgFPiJLR43k5B1vD95Td9srDVV/9uwv4308=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqFdF-008tVs-Ee
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 14:21:54 +0000
Received: by mail-qk1-f169.google.com with SMTP id g28so11836891qkk.9
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Nov 2021 06:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=RzP6b9r8+MGJsGKUfdXV3PdSyaq0SjwQnaEljKzQwcc=;
 b=F1cE1GDHtA1VuR+vAENA+apO92UpCF0A+0f1qEtpNiEXO3vI/T/V5jjZRfj2y60/oP
 cC62Dw7YAyiCsy5M2KOXoEhRJoOJlmUQXtFj8JMETP/yQJYtLdVbciIx/YaII6mf7lJJ
 c1XhdwxHxLY02jRtG+ys1Nj+n+IKLRMPX91TCqeRO0Q4SZCA+h3YN3+pEr6XRTtc+uXZ
 OmRvYC2oXMleFAKfWETRZwhnpJhMsCbKdwqFRGGsC2Qv5/RH/+wqEVAZ3P71FVZDGl3H
 A0vbezSVUfDpTr+3lVCwbQX8zZ226kyCikHj1+cB210UsWGatSF3aDcHRwD0Uc9bLBmL
 6SBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=RzP6b9r8+MGJsGKUfdXV3PdSyaq0SjwQnaEljKzQwcc=;
 b=dsYaYBnQII4n8Mm27CQ/TnmyoVM5yZXuqvye4zkl+eaglF6F8uXYB+1eNtgdxZKn4M
 UiDBqeauRpnWW/jZ/bZvNpzQ/lH2VYoB2SRkNm6WVYnBqQnE+doUp1Yt+s7n12vRqnix
 kE74dMbJNr0uGJlg6xS89x8D1ZUhPupk3maq3Q8Xj5V/u+dIMQ41pYU1fnNQrj5uEaVI
 uSaZUYUASOzDmm2UI+yab5uZ295HTnjDwSFOVIqPpkwTqBpmC6uGzzKnGu+5+KbRzrw5
 zCWd5Lw8xLj/NR+gBwa8B5IgU989vZ6FEH4SnIXV9EmfU0WdXieGnkpC0Zr5d82jeaT/
 k4sA==
X-Gm-Message-State: AOAM532gFoDpKzSF40lZADk/tfI3McJHViYYS7vGRKUGls3TYHPOF2Mv
 oB4d0j/BHKt35HIQwoaRq19mHiEgbw==
X-Google-Smtp-Source: ABdhPJyv4EAWbQQrBXkbBngyIJ5yCRuwEyJL1p4Kz7Fbxu3QwUqgLQB5VnxgKJmLidFPyTKdlYgXGw==
X-Received: by 2002:a05:620a:5f8:: with SMTP id
 z24mr7445042qkg.677.1637850103573; 
 Thu, 25 Nov 2021 06:21:43 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id c24sm1578859qkp.43.2021.11.25.06.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:21:43 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:adf8:b831:eb9b:b451])
 by serve.minyard.net (Postfix) with ESMTPSA id 1BCA21800BA;
 Thu, 25 Nov 2021 14:21:42 +0000 (UTC)
Date: Thu, 25 Nov 2021 08:21:40 -0600
From: Corey Minyard <minyard@acm.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211125142140.GV15676@minyard.net>
References: <20211124210323.1950976-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211124210323.1950976-1-kuba@kernel.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 24, 2021 at 01:03:23PM -0800,
 Jakub Kicinski wrote:
 > We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of >
 size -1) after user space generates a message. Looks like the [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqFdF-008tVs-Ee
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix oob access due to uninit
 smi_msg type
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 andrew.manley@sealingtech.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 24, 2021 at 01:03:23PM -0800, Jakub Kicinski wrote:
> We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of
> size -1) after user space generates a message. Looks like the message
> is incorrectly assumed to be of the new IPMB type, because type is never
> set and message is allocated with kmalloc() not kzalloc().
> 
> Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

This is correct, and in my queue.  Thanks for the fix.

-corey

> ---
> Would it be possible to get something like this to Linus ASAP?
> It's flipping over all my test boxes.
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index deed355422f4..f0b18c25cbb1 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -5031,6 +5031,7 @@ struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
>  	if (rv) {
>  		rv->done = free_smi_msg;
>  		rv->user_data = NULL;
> +		rv->type = IPMI_SMI_MSG_TYPE_NORMAL;
>  		atomic_inc(&smi_msg_inuse_count);
>  	}
>  	return rv;
> -- 
> 2.31.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
