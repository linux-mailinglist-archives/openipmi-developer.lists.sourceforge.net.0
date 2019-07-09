Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B0063DBE
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 00:09:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkyIZ-0003hK-EY; Tue, 09 Jul 2019 22:09:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hkyIX-0003hC-Vw
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 22:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GYzOMbWpyE1lpwp1gCViZuHJwd8p/Nxm1g5Qq1Zdkcw=; b=ml0jo/ZpGGNWq7huPV1zTTyYUP
 1DohqFWd6xx5t46w21ESayvwcqfSUV/GibQSXZeS/luwHaD+KphtFMk0ZUIjxBKhPhX3NF92xS1tq
 E5NKxgbdbtdppPxS3ptCAbB2igv6dVXQfiklf2syr1hQ0myVZzsO5uJTGUvacPf+QGPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GYzOMbWpyE1lpwp1gCViZuHJwd8p/Nxm1g5Qq1Zdkcw=; b=mhOdtdbXdAEOCujpeVHVGmLDsy
 GFTa82/p06Yb7Q3/mwSQuGAIc48I1vqKECud/Xcy+jZGEFn66asC1ZGjY+EN4o1lowuv/mMadCJj+
 i2UcLIB1KPbhHsx7wp6qUgBuzWelteA2sq8fhAylP4PYxILHxRd1kDl+l4OYjjbdNVKc=;
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkyIW-00DoHD-M9
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 22:09:17 +0000
Received: by mail-qt1-f196.google.com with SMTP id y26so295548qto.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 15:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GYzOMbWpyE1lpwp1gCViZuHJwd8p/Nxm1g5Qq1Zdkcw=;
 b=KV/SGOHdvmhgCqJWFoOzRwBc6ErsjMfqtHDV+pTiII7F+O3dn3Fy7nHifFR2fURgds
 nAg4WD/HU1faHzclkZ0+AKGFSQCrj/viPhtjUVc7V16cIBFAEA6o5PmX1ALqcOoFqL8+
 O4dHVaP5kW4p2qP/S7mWOsgkY4/xRReTjvpGQOBcFF81S73FAu/jPXPRmsPtrkU+9kLi
 +ceHzw96mQ3yvw5QDJXnNH0E4GOOaA3eGt1ZmaOfID3EWRuVl3IyWllRZu4HMMfU5Tk4
 Zj4XnThw/5oqQ/mmJmkHjqEzXztN1zkl9Ou3EE72R9MipmBWe6Ck42mQa3F91aVcOuaV
 1gfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=GYzOMbWpyE1lpwp1gCViZuHJwd8p/Nxm1g5Qq1Zdkcw=;
 b=KPgyzy7FMWnsSIhVYZAKhPDao98NNJBSlmFJggw4cpChtxi+aNUinr0WW0Jf8NULQ/
 Unj0PKEqaBxwJ8z64kN1EG+jqOu60fDUWB4488AtHXQV9mzxGDqZv35K/G0XTX+I0Ari
 Xsh+Ys3xCmpeBRTlBIaQV1OvncDyxaocyp+bx67Egxr7XvYkSgZkT8bTcLDyBKVlIa3N
 gr0YlyczSgqu+j6G/n5CIGGqwWaDiefWUYJ81TiCRj1gJ7wzDfLrt/K6sfU+TIObjTg+
 do2x8gAsG9j3BkRPwgvbHPUknPTDF4FMXYBtmGRjwaIrUum66JUCrjXxBLGR3tdaBlaB
 5aXw==
X-Gm-Message-State: APjAAAVvGH2XOyBK2ueuzhHv0ZPBGnjftccvDJwG+HSxtJ0TTYDTvPQD
 n5z2Wa6DM69fp5EXe0BIqx5DNQuYgZE=
X-Google-Smtp-Source: APXvYqz2sBsIZwfeXtkQccwfxxUfpSUIBIICzSK/Pv9S94ogQhIf0ai5BtTeVlHd/1H6wcHChp4qwA==
X-Received: by 2002:a0c:d066:: with SMTP id d35mr21305945qvh.221.1562710150579; 
 Tue, 09 Jul 2019 15:09:10 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::2:fa50])
 by smtp.gmail.com with ESMTPSA id z12sm161251qkf.20.2019.07.09.15.09.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 15:09:09 -0700 (PDT)
Date: Tue, 9 Jul 2019 15:09:08 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190709220908.GL657710@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709214602.GD19430@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hkyIW-00DoHD-M9
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello, Corey.

On Tue, Jul 09, 2019 at 04:46:02PM -0500, Corey Minyard wrote:
> I'm also a little confused because the CPU in question shouldn't
> be doing anything else if the schedule() immediately returns here,
> so it's not wasting CPU that could be used on another process.  Or
> is it lock contention that is causing an issue on other CPUs?

Yeah, pretty pronounced too and it also keeps the CPU busy which makes
the load balancer deprioritize that CPU.  Busy looping is never free.

> IMHO, this whole thing is stupid; if you design hardware with
> stupid interfaces (byte at a time, no interrupts) you should
> expect to get bad performance.  But I can't control what the
> hardware vendors do.  This whole thing is a carefully tuned
> compromise.

I'm really not sure "carefully tuned" is applicable on indefinite busy
looping.

> So I can't really take this as-is.

We can go for shorter timeouts for sure but I don't think this sort of
busy looping is acceptable.  Is your position that this must be a busy
loop?

Thanks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
