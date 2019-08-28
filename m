Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD155A0D9E
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Aug 2019 00:32:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i36Uq-0003IK-OA; Wed, 28 Aug 2019 22:32:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i36Un-0003Ho-7H
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Aug 2019 22:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0HaheuQHQRT9LEcUZx3XnMQChJG5XRPyuRaS389XelY=; b=f6deJM8PrWDMfS1dDOmWdcStSp
 Lh1XYpe8n5ZjQsetvYIpQUnVwl1Xk5LnEgx4ztNweczlUQpubR5W61AlbQOZ49iTj9T2REPP9T5fc
 BUuT5lu8rpxk326QcHT4x43BYYsaUop1kxeMW6+gb+cYjepjPexQP2acDMJIYqUmm2PA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0HaheuQHQRT9LEcUZx3XnMQChJG5XRPyuRaS389XelY=; b=DVZaePMvf5Dygb/vhnCt6wMuRu
 PCKZEBOybFjvIF4p8IrcGFh0eXufHI+ArZxJIhJ71715NT3I5ywXr6e6k6tysv/tWD4jrzPXDWxHU
 0raRx4lzmrw0bKNt4EG5iiVVMG4aJol3X0okwUGu6U2tXFrA0pFtzhGZSJ1xaRPE7l38=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i36Um-006zvQ-1q
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Aug 2019 22:32:53 +0000
Received: by mail-oi1-f196.google.com with SMTP id b25so1028531oib.4
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 28 Aug 2019 15:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0HaheuQHQRT9LEcUZx3XnMQChJG5XRPyuRaS389XelY=;
 b=V5vZiC16J5Bo/EFt40iuUWwnm4/xViVSyGBhX75zFVM/0kdyuv4XCBtyAd9+y0EBjk
 d5wLd/zPiUSIRR4KUVHRY2vJMnraOR+JkElYh03WeZhN2wtSyAAi7hO66MrzSCteG/1t
 oRqrQX9yAYfoUsCVBPa4jjk3F5LPzqib+FED2i8aDpUO2j5P4jQ8if+CV+dinRsrqK08
 YxxqiDBbjCsNsevgElegWEiAPAW5v69Gb4mOX1O8TdQPRHWUpfyCcUx5fdUquy1/+vXW
 GJuC3+wdydLKcUIhdLsSdxR5brS47cl73bDpTsh7TE5xBs52AdWWr+0fB9EYWGzuvFta
 Fb7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=0HaheuQHQRT9LEcUZx3XnMQChJG5XRPyuRaS389XelY=;
 b=okpggDoyJKChHVMVMBwiO8snXLgJsxKWYzgqunIFn0JAf66mqCvMAtCl8NGVl9q+8r
 GPYsslOPRhsnZs8qAOUe5H+ZBQBdBFhdUvcBGeDQc3dNalqDAOw+/a+8eWNKZq2j2zr7
 roxbcfdKq0ve2GaeIiFZbMPqXAY0oWBxmo2Wu9pVH5uDEjYvqVH6MJatIx41pTcVg2Hq
 FuVX7CY63gTYFxkTBKX1UxzVg/PDt76Wh+2Wt7HpDPf15vkWj0WoFentmFSY+Ktc+QPv
 e0Ff5URf/QCnwuGVyvFFxsZAdlViT4esXYb4WFxtxtlSsC88BDSJuOUmjri8oA7kAZXm
 IgOQ==
X-Gm-Message-State: APjAAAUNL8TLG42gViIMzHhOWwlmzUprdDpmAcE/e2A7uiKj6sKN9I5j
 KO7bTXD1+BuvIpm+7HhnhQ==
X-Google-Smtp-Source: APXvYqzteF9SCvtsRjWtIzJJEXjRttCnhDRsKCkjbJtd/gHZP3r2rNLG0DB1SCpG3D8s7IpUS6nzKQ==
X-Received: by 2002:aca:5ad4:: with SMTP id o203mr2830633oib.136.1567031566036; 
 Wed, 28 Aug 2019 15:32:46 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id i17sm135007oik.32.2019.08.28.15.32.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 15:32:45 -0700 (PDT)
Received: from t560 (unknown [45.19.219.178])
 by serve.minyard.net (Postfix) with ESMTPSA id A5C7E180039;
 Wed, 28 Aug 2019 22:32:43 +0000 (UTC)
Date: Wed, 28 Aug 2019 17:32:38 -0500
From: Corey Minyard <minyard@acm.org>
To: Jes Sorensen <jes.sorensen@gmail.com>
Message-ID: <20190828223238.GB3294@t560>
References: <20190828203625.32093-1-Jes.Sorensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828203625.32093-1-Jes.Sorensen@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1i36Um-006zvQ-1q
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

On Wed, Aug 28, 2019 at 04:36:24PM -0400, Jes Sorensen wrote:
> From: Jes Sorensen <jsorensen@fb.com>
> 
> I came across this in 4.16, but I believe the bug is still present
> in current 5.x, even if it is less likely to trigger.
> 
> Basially stop_timer_and_thread() only calls del_timer_sync() if
> timer_running == true. However smi_mod_timer enables the timer before
> setting timer_running = true.

All the modifications/checks for timer_running should be done under
the si_lock.  It looks like a lock is missing in shutdown_smi(),
probably starting before setting interrupt_disabled to true and
after stop_timer_and_thread.  I think that is the right fix for
this problem.

-corey

> 
> I was able to reproduce this in 4.16 running the following on a host
> 
>    while :; do rmmod ipmi_si ; modprobe ipmi_si; done
> 
> while rebooting the BMC on it in parallel.
> 
> 5.2 moves the error handling around and does it more centralized, but
> relying on timer_running still seems dubious to me.
> 
> static void smi_mod_timer(struct smi_info *smi_info, unsigned long new_val)
> {
>         if (!smi_info->timer_can_start)
>                 return;
>         smi_info->last_timeout_jiffies = jiffies;
>         mod_timer(&smi_info->si_timer, new_val);
>         smi_info->timer_running = true;
> }
> 
> static inline void stop_timer_and_thread(struct smi_info *smi_info)
> {
>         if (smi_info->thread != NULL) {
>                 kthread_stop(smi_info->thread);
>                 smi_info->thread = NULL;
>         }
> 
>         smi_info->timer_can_start = false;
>         if (smi_info->timer_running)
>                 del_timer_sync(&smi_info->si_timer);
> }
> 
> Cheers,
> Jes
> 
> Jes Sorensen (1):
>   ipmi_si_intf: Fix race in timer shutdown handling
> 
>  drivers/char/ipmi/ipmi_si_intf.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> -- 
> 2.21.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
