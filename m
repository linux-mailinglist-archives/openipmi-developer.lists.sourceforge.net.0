Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B23B2D81
	for <lists+openipmi-developer@lfdr.de>; Sun, 15 Sep 2019 03:09:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i9J2P-00026l-JV; Sun, 15 Sep 2019 01:09:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i9J2K-00026X-OO
 for openipmi-developer@lists.sourceforge.net; Sun, 15 Sep 2019 01:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pVY7GYznZUijjBc7X2tclsJfpGNz8NESBfTF4Oaa2qY=; b=Ec3zSRTzl8WpTvuSqRyc+wD4FU
 LN4apTsUEkpUD+wDc1aUu8ObPW2jiTKyZODWvze0OwV5nNITSCFgtsQEOV0Ivi7fc28KfQ6IcpznV
 0+IpvQg4EifuUkjxN0xspEBz0fcPlvotyzLRWFyK05ai5TJVF91wnRA+CjPEj8GYfmac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pVY7GYznZUijjBc7X2tclsJfpGNz8NESBfTF4Oaa2qY=; b=F2/ky/siwwgCrrQcvvfGjZW6lj
 eRNH99LsIdD/kTuaWYKdYYPWjFCWjDTiEzqHki+Flb7B1yFXH412DAP7kmtACW0jKagLkXhQ1WAwB
 Q1OV7f5bMJVorieexSIwm91lYhf4+6dOf6aX2AvOF4fOCWmCEQvv4bfxz9iHLlcUPMWM=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i9J2E-006D6T-OS
 for openipmi-developer@lists.sourceforge.net; Sun, 15 Sep 2019 01:09:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id t84so5598856oih.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 14 Sep 2019 18:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pVY7GYznZUijjBc7X2tclsJfpGNz8NESBfTF4Oaa2qY=;
 b=aCfDZsbWEAWGGRMky2a5nmbJNhj/4+ui7XoQwZ3ntNOVLaO1OYoLJe3jVDKBsxA54q
 I/EUDSWo9IUqdsl0vs/o+E9FjdxbNKikEeAS11oMyuzx2KyeFadayPu68SLOqdxIYK3i
 plU1/lDlNs0YiFGQKMepyrmiPm4gfdHW3OZnnklSmEgCjAex31ctzzB1g2P70K5VO3k6
 svRrr1/GNpgusqNsKe8p/ht1MkfWX1ei98ZK47BkOGbzQ3c3cRgIAAm+/+uBz4xnW5zK
 7PMpdtAiaYyjDfqhRXBmNu024ExalLi4X/frubr281H0TaWGYDQ4koZHUCbeDiN0KsNl
 zxSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=pVY7GYznZUijjBc7X2tclsJfpGNz8NESBfTF4Oaa2qY=;
 b=BYlNQuuTsCWdgiTZ7pJJ8HQ75gcje/RPCaGz+bY6I2nQDtqgfjhfV4T9AdryopHFs2
 JdM8eXXFz3ll3YwftvntU7MuHNSZj8Z71j9FKeHernv1p8U/EebC0xUOC1QziyEjExU3
 uwMJlQsVwQuJjeAo54a85rbDq7ftujOIQKetSADkx3EpuaiDC6TrMt27a9kvGh9zvi81
 odqCJRN+zfsMcFbgH7VDWxClROToUztWB2f92DjxtODy9TurMVCkoJAFfZBaDSpMiGq+
 ZieaUzpo9i/H6Hw+WAyKRJE2q1uXnU3FT/y4jNdunxsXGuA+A0CBH0SLk6XTZ5qiybIT
 KPDw==
X-Gm-Message-State: APjAAAU3CAmvCfdUTZ/AGaI0Y0SmN4Z5rlYSUShX7K1/pCfJzc294rjZ
 YX8Q9hsKBQbzKbytlB3olw==
X-Google-Smtp-Source: APXvYqzk0vH7Ypv5ygXpcKT6IjSLBaOk6loAWxvPTkM2yU6kWKDVNF10YkS57pigMx+uYzyB5Toz/w==
X-Received: by 2002:a54:418a:: with SMTP id 10mr9079555oiy.88.1568509736833;
 Sat, 14 Sep 2019 18:08:56 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 93sm12736604ota.16.2019.09.14.18.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 18:08:55 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id B00271800D0;
 Sun, 15 Sep 2019 01:08:53 +0000 (UTC)
Date: Sat, 14 Sep 2019 20:08:52 -0500
From: Corey Minyard <minyard@acm.org>
To: Jes Sorensen <jes.sorensen@gmail.com>
Message-ID: <20190915010852.GG13407@t560>
References: <20190828203625.32093-1-Jes.Sorensen@gmail.com>
 <20190828223238.GB3294@t560>
 <15517bfc-3022-509d-15ea-c2b8e7a91e0a@gmail.com>
 <20190829181536.GC3294@t560>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829181536.GC3294@t560>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1i9J2E-006D6T-OS
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

> 
> > 
> > {disable,enable}_si_irq() themselves are racy:
> > 
> > static inline bool disable_si_irq(struct smi_info *smi_info)
> > {
> >         if ((smi_info->io.irq) && (!smi_info->interrupt_disabled)) {
> >                 smi_info->interrupt_disabled = true;
> > 
> > Basically interrupt_disabled need to be atomic here to have any value,
> > unless you ensure to have a spin lock around every access to it.
> 
> It needs to be atomic, yes, but I think just adding the spinlock like
> I suggested will work.  You are right, the check for timer_running is
> not necessary here, and I'm fine with removing it, but there are other
> issues with interrupt_disabled (as you said) and with memory ordering
> in the timer case.  So even if you remove the timer running check, the
> lock is still required here.

It turns out you were right, all that really needs to be done is the
del_timer_sync().  I've added your patch to my queue.

Sorry for the trouble.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
