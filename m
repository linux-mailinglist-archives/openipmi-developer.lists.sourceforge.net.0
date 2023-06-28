Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95164741059
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Jun 2023 13:47:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qETeA-00069d-5d;
	Wed, 28 Jun 2023 11:47:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qETe8-00069W-De
 for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Jun 2023 11:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YqXHGBqKxlgkWmLDRd9GTKbx3UAhvwTpUadWyVXxc+U=; b=fGulKTjkf4qMv1gJNkzgAI5fo5
 T1mXwfdbH4xB/5GFTyZepcCdVOFZlY+4W2TInH4ELiOAWF5LrZmgHse24J+ScCWOBnHtCK1/gop+z
 wcXJA7c4QyP9vog7I1e9FCl0yGC8qmFaFMQ0c0vOMghTwbAuohM8gU2i+r96/zFCutv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YqXHGBqKxlgkWmLDRd9GTKbx3UAhvwTpUadWyVXxc+U=; b=OY1rUNTdpA67qvv7MQc6qlQZPw
 9zorOyOA5oxTrBKstQOOSh3TTB9nZJans+ZZCWSufHKyxuHFWFIXjKkjnsmgomhAcBh5xMboB8A4O
 GbBu/1xsRP7pwaUrlLO07sQTyhGlwVAoYSu7OQ79TuJIVeqHz+k9rYtHlU5p6QrPNNao=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qETe5-00081j-RV for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Jun 2023 11:47:41 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6b5d6a05b6dso4486036a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 28 Jun 2023 04:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687952852; x=1690544852;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YqXHGBqKxlgkWmLDRd9GTKbx3UAhvwTpUadWyVXxc+U=;
 b=jF/YUrLEBqH15ntdhAQZbW/4ZWmEtFMkC5wNfTlau4HfB9upEgvLb5aoA91uCrHHYW
 kXBdHXiNPbV+MevEWFjnHi0XekhK9TOrgRhezitVwmnHlS5SrQ0GqJoOY0sNi+Jxp/sp
 TnhhtO185oUB+WxC8divhj7TIiS7MOMU0OwI9PBbp0BQGq/4BkcDQgkprRJeLc127g5i
 FSpjF77N4BxZ8ahh4wmDBrn+jUckkzqyXUFB/SaeKQRCvnBpoXB+2zgnj29EEq9rmGt/
 FBfxzlkprxOFPEN/PZx1KRs1S87laMVlGEcEWyo2wcvVfVvra143d19wvVTl7rLc2lmX
 zWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687952852; x=1690544852;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YqXHGBqKxlgkWmLDRd9GTKbx3UAhvwTpUadWyVXxc+U=;
 b=KeV2cx1PUHSKbsDOuH8a0fg/KVfrN+DXq91f/bc7E39mjgIZrhMVEZQa1TTFNYz428
 69dXu02aV5ehBaMyJZXV7zJSCMqxc6O2umttVmNgCtBQ13BDw3bEp+pmO4SGlp0hM0Un
 DMqVUf6SxjEzzkXxn9NXSUX0WLNdJE0Co+m1BjhtT0Q96kXvKuGmDsNWJIRcA4nceWqH
 DGY7EUmbu8IOndkIxJUiCuGIvxa6p7u6Lln+4IZCUhJYy17tRzAmjP/fOQjapSRZmOg2
 jf+iw8DoDhdbOLhgMw/vsXPbPGYw/5vnuzDy5EfbinGGD8iVEBxE7jQhTb/KstoDCSRp
 RLeg==
X-Gm-Message-State: AC+VfDyFFpp29r0Q4xbUb4P2fKKK/1u2KSyfiX/muN5vvoDLl09JrMcM
 rAJtzjtYWSCAJrsRavdeInaa1EKQyQ==
X-Google-Smtp-Source: ACHHUZ6wbZ4nBKIip3Y9SIKMzwvdkhB4f9wjgS9rpDaCP5klHMNLClhSBc/pLTsVW3OHdgjNmij3YQ==
X-Received: by 2002:a9d:4d12:0:b0:6b4:5ed3:8246 with SMTP id
 n18-20020a9d4d12000000b006b45ed38246mr28019494otf.2.1687952852062; 
 Wed, 28 Jun 2023 04:47:32 -0700 (PDT)
Received: from serve.minyard.net ([47.184.186.55])
 by smtp.gmail.com with ESMTPSA id
 e2-20020a9d63c2000000b006b8850ad193sm55218otl.56.2023.06.28.04.47.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 04:47:31 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1e76:1406:a469:4f70])
 by serve.minyard.net (Postfix) with ESMTPSA id 06A62180044;
 Wed, 28 Jun 2023 11:47:31 +0000 (UTC)
Date: Wed, 28 Jun 2023 06:47:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <ZJwd0UDKYcK9AvSf@mail.minyard.net>
References: <20230627152449.36093-1-dg573847474@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230627152449.36093-1-dg573847474@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Indeed, this looks like an issue. Andrew, any opinions on
 this? The attached patch will work,
 the other option would be to disable interrupts
 when calling kcs_bmc_handle_event() in the timer handler. But then you have
 to worry about R [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qETe5-00081j-RV
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Chengfeng Ye <dg573847474@gmail.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Indeed, this looks like an issue.

Andrew, any opinions on this?  The attached patch will work, the other
option would be to disable interrupts when calling
kcs_bmc_handle_event() in the timer handler.  But then you have to worry
about RT.

-corey

On Tue, Jun 27, 2023 at 03:24:49PM +0000, Chengfeng Ye wrote:
> As kcs_bmc_handle_event() is executed inside both a timer and a hardirq,
> it should disable irq before lock acquisition otherwise deadlock could
> happen if the timmer is preemtped by the irq.
> 
> Possible deadlock scenario:
> aspeed_kcs_check_obe() (timer)
>     -> kcs_bmc_handle_event()
>     -> spin_lock(&kcs_bmc->lock)
>         <irq interruption>
>         -> aspeed_kcs_irq()
>         -> kcs_bmc_handle_event()
>         -> spin_lock(&kcs_bmc->lock) (deadlock here)
> 
> This flaw was found using an experimental static analysis tool we are
> developing for irq-related deadlock.
> 
> The tentative patch fix the potential deadlock by spin_lock_irqsave()
> 
> Signed-off-by: Chengfeng Ye <dg573847474@gmail.com>
> ---
>  drivers/char/ipmi/kcs_bmc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index 03d02a848f3a..8b1161d5194a 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -56,12 +56,13 @@ irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
>  {
>  	struct kcs_bmc_client *client;
>  	irqreturn_t rc = IRQ_NONE;
> +	unsigned long flags;
>  
> -	spin_lock(&kcs_bmc->lock);
> +	spin_lock_irqsave(&kcs_bmc->lock, flags);
>  	client = kcs_bmc->client;
>  	if (client)
>  		rc = client->ops->event(client);
> -	spin_unlock(&kcs_bmc->lock);
> +	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
>  
>  	return rc;
>  }
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
