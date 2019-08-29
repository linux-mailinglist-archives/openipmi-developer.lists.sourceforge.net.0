Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 228D6A2373
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Aug 2019 20:15:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i3Oxc-000876-2l; Thu, 29 Aug 2019 18:15:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i3Oxa-00086h-14
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Aug 2019 18:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EU1ws418Vc4Zys0H3+cXP7S7nl66dSX59rq7bwwsB9E=; b=a02Shg5mtC3phMH/+gTXRk0GCw
 PEUcU0KjGSnfzzgF+ZxJFYtxS0k9WU2FAoDEzHffmFXmgryCiUZceymmvjHiPu0HGBZGPl3octFTc
 nfgZoGwgHdNuM2EMMbFg7KeKK/9a/VO3v9J2dw/RO1QLdnNmgZ80mUbo6FDhyqokWFkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EU1ws418Vc4Zys0H3+cXP7S7nl66dSX59rq7bwwsB9E=; b=K4gMXaet9YA+1MDCMxqB0Kssz2
 +BhfqdSGMBuvptSDr8v+msIUFLibRRRO0Q6l6b7sO8en4xhVvcwZrke9Vh4l1msjXz2+QIPzvJKQN
 7doJ3M4tShy++ICiHJCESY/M/39kKRqBKIwgTrcs8TfQTYXdoDVQbiQ+9bSzT7u0PdHc=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3OxY-008Ipj-IL
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Aug 2019 18:15:49 +0000
Received: by mail-oi1-f195.google.com with SMTP id v12so3273828oic.12
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 Aug 2019 11:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EU1ws418Vc4Zys0H3+cXP7S7nl66dSX59rq7bwwsB9E=;
 b=uCcz6yYxLJGBv9xsUU025u9c/HplwdEBy5W1hfzlyXJvM7CobJHv/bePeJHJg5tpDI
 4XXsMVqENr+uALDs29HLEtazP3lmRr8p+CHIPcyg5qVhomGS7eiJZGZrPhA4Ehysoa9L
 llqD5RrrJhubFSpf4RxldkVUhM1izBTZPpRTM3nGZDUmHWut/oFDNwX/iq5AXvLLrWux
 lIgZq47OqAQhqDihMmR03Dm92IoriZNzk2GG8bnqz1yMOhnd2ljgPIuea/GO4f6dYQCG
 qOxqbi9v4b4B2gRI7T2T2lXV+fWBVUz7hCpQi0PSj8tgTefw2MIE+LAOJMuQ/Hnt4DGp
 HWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=EU1ws418Vc4Zys0H3+cXP7S7nl66dSX59rq7bwwsB9E=;
 b=b2b/96G6JxQI5/pGzwzwVRcdwmIPjxB8fdMkiek2Xchsqtb1apDYJWAJY68rEkYDgr
 xbwKJOEA/EUuZMSCKJ89iqcDZY3dY4YGtf0XO1h9SAbDhd+5egBYbdQdlTlLja7/RB4D
 oXYCN5/8ijq5/XbdxDFce/iDGlQKPooqKdLxSwP0BZbolt8ibSfegWTdsHlvJeBNmwzu
 Ati0Bb9AEaJ1Tmrx8FnFkCrSyC+105ybJ5bJQy6v9zKHBw6C4PWFyMP/Yx166qk8hU52
 UsqaN2QehPSfPZC9AmgICPw5MRd32yXZRp7c6PgxlNd6DsvQzhPyluBceSk2bq8IVaVT
 GZMw==
X-Gm-Message-State: APjAAAWb+clTFBsV27GQ6s9EbwZYiufjSE47aWBn7zwGRSizrriGu6gP
 YinxNwMDXs6DkZQO4+llpQ==
X-Google-Smtp-Source: APXvYqx/dFackw5CizdKplQqChsLhoBrm8Y7UFCg7Cn8vkFBIAWv9ktdMr/OCEOPrJ61xX4IzzHIJQ==
X-Received: by 2002:aca:6044:: with SMTP id u65mr7792941oib.16.1567102541630; 
 Thu, 29 Aug 2019 11:15:41 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id m6sm167909ote.74.2019.08.29.11.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 11:15:40 -0700 (PDT)
Received: from t560 (unknown [156.39.10.47])
 by serve.minyard.net (Postfix) with ESMTPSA id 9475E1800D0;
 Thu, 29 Aug 2019 18:15:39 +0000 (UTC)
Date: Thu, 29 Aug 2019 13:15:36 -0500
From: Corey Minyard <minyard@acm.org>
To: Jes Sorensen <jes.sorensen@gmail.com>
Message-ID: <20190829181536.GC3294@t560>
References: <20190828203625.32093-1-Jes.Sorensen@gmail.com>
 <20190828223238.GB3294@t560>
 <15517bfc-3022-509d-15ea-c2b8e7a91e0a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15517bfc-3022-509d-15ea-c2b8e7a91e0a@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1i3OxY-008Ipj-IL
Subject: Re: [Openipmi-developer] [PATCH 0/1] Fix race in ipmi timer cleanup
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 28, 2019 at 08:53:47PM -0400, Jes Sorensen wrote:
> On 8/28/19 6:32 PM, Corey Minyard wrote:
> > On Wed, Aug 28, 2019 at 04:36:24PM -0400, Jes Sorensen wrote:
> >> From: Jes Sorensen <jsorensen@fb.com>
> >>
> >> I came across this in 4.16, but I believe the bug is still present
> >> in current 5.x, even if it is less likely to trigger.
> >>
> >> Basially stop_timer_and_thread() only calls del_timer_sync() if
> >> timer_running == true. However smi_mod_timer enables the timer before
> >> setting timer_running = true.
> > 
> > All the modifications/checks for timer_running should be done under
> > the si_lock.  It looks like a lock is missing in shutdown_smi(),
> > probably starting before setting interrupt_disabled to true and
> > after stop_timer_and_thread.  I think that is the right fix for
> > this problem.
> 
> Hi Corey,
> 
> I agree a spin lock could deal with this specific issue too, but calling
> del_timer_sync() is safe to call on an already disabled timer. The whole
> flagging of timer_running really doesn't make much sense in the first
> place either.
> 
> As for interrupt_disabled that is even worse. There's multiple places in
> the code where interrupt_disabled is checked, some of them are not
> protected by a spin lock, including shutdown_smi() where you have this
> sequence:
> 
>         while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)){
>                 poll(smi_info);
>                 schedule_timeout_uninterruptible(1);
>         }
>         if (smi_info->handlers)
>                 disable_si_irq(smi_info);
>         while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)){
>                 poll(smi_info);
>                 schedule_timeout_uninterruptible(1);
>         }

This one doesn't matter.  At this point the driver is single-threaded,
no interrupts, timeouts, or calls from the upper layer can happen.

> 
> In this case you'll have to drop and retake the long several times.
> 
> You also have this call sequence which leads to disable_si_irq() which
> checks interrupt_disabled:
> 
>   flush_messages()
>     smi_event_handler()
>       handle_transaction_done()
>         handle_flags()
>           alloc_msg_handle_irq()
>             disable_si_irq()

This one only happens in run-to-completion mode.  Which is strange,
but a number of people had issues with getting into a new kernel before
the watchdog timeout went off, so the run-to-completion mode runs at
panic time so the driver can run without scheduling so it can extend
the watchdog and store panic information in the IPMI log.

So you actually *don't* want a lock here, since the panic may have
occurred when the IPMI driver was holding the lock.

> 
> {disable,enable}_si_irq() themselves are racy:
> 
> static inline bool disable_si_irq(struct smi_info *smi_info)
> {
>         if ((smi_info->io.irq) && (!smi_info->interrupt_disabled)) {
>                 smi_info->interrupt_disabled = true;
> 
> Basically interrupt_disabled need to be atomic here to have any value,
> unless you ensure to have a spin lock around every access to it.

It needs to be atomic, yes, but I think just adding the spinlock like
I suggested will work.  You are right, the check for timer_running is
not necessary here, and I'm fine with removing it, but there are other
issues with interrupt_disabled (as you said) and with memory ordering
in the timer case.  So even if you remove the timer running check, the
lock is still required here.

It also might be a good idea to add a WARN_ON() to smi_mod_timer() and
alloc_msg_handle_irq() if the lock is not held, just to be sure.

Thanks,

-corey

> 
> Cheers,
> Jes


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
