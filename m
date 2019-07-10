Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A33CD64832
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 16:22:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hlDUO-0003R1-Ta; Wed, 10 Jul 2019 14:22:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hlDUN-0003Qm-Ci
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 14:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ppjQH7UnKSNQZiUbygkROUvFgkXUyrf6BJVSCRoD7mo=; b=bTsYB6RjSX7xIfCX63FrKJ3/J6
 MiYI0H5zzXVJoyUrczTaF/HVY4QhS/d7xsZiNpX2QgVh/6fnc688U7R8Y5QkVPr2tTT/WNEKaDbcQ
 947rx9+e2mzzWLTYv/6RD9FvTyKMV9cWA7Fisv5NJyVgpGOGf4zzzxXh1BM1Qg0hyiZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ppjQH7UnKSNQZiUbygkROUvFgkXUyrf6BJVSCRoD7mo=; b=SAN+Al9Cn3xb5VsV01i7vfDuH1
 V5MALIMKXU1BozjXhGWZzJJoMikL92S+Q5nRwwpjhNAZlJwuq0f+Psewnt9TK5wGd70zNi2Qq5P2V
 x1Y20HNPVp66VXxnflL4S8gD/RBU9QRhIOewPnzEaMtnNqbk0xIn+eEa7MhQFh7hSJyw=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hlDUL-00DwVn-Un
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 14:22:31 +0000
Received: by mail-qk1-f174.google.com with SMTP id m14so1980873qka.10
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 10 Jul 2019 07:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ppjQH7UnKSNQZiUbygkROUvFgkXUyrf6BJVSCRoD7mo=;
 b=SgcOUEhU3ozGdXF2/sEbHBTindyV5H9yn5U3KQ8IsbT/CcVNeb4FlmmeF80ImehMCy
 iCWrpwPNEdBf5Xo4Z9CX+7l6USQgVuXN/JyWDnER0bITcZEKp+jyE9/wSl58JqOp/HXV
 LK34xwqzEwN99PfMFxXd8JSKb663MlOzp6+Q6QslI+sSsAu6b8aNmcbD7EQOHWdsnMhT
 hAxl/PFZfA4ZboPeLWPU8mVFdJaEXjK1nNZxTxy0fWSWYLk0bqPt2472hMYwSLdFLZVH
 vCcZksmhXRAMo0ddCRYvkUn2jlYD0LOiNIJf23980CgsnQqogYMMQh9zG8f4xybTBElf
 PC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ppjQH7UnKSNQZiUbygkROUvFgkXUyrf6BJVSCRoD7mo=;
 b=jYVpWVfYodp5yMmUmeMFmEsVTBCZJkB1+3GLI4WWWoDHG975cSHGiXe+GuulXw0BIk
 IsNYpUi+ubD1CmYgfpGxR8tbM2ZcTrwQCoKFUwTbykgE7tDEdDmAubi7+wmgyxWgpvJs
 1Ym6plv5qn64RBzM2nIqrfsHhxs91lOg+xKolXmSdu7opbH3diBaR8HQuimVECB4M1iP
 5QiUyQ/NOQTVwKqQ1uLW/eMTEKO29astAS1HftrPq3eZs2xvSP8/f2/gEMMIbtlkYCCw
 M/bxJtjiwXxh3MN5r3Adw1DR/9baMiSKEsjdN11Cm+AKeY0LCifH2r9GEIoMehTyJb4/
 4jGA==
X-Gm-Message-State: APjAAAUC9hBD5SODB5qWoW/hP3eeA71Pje+QzZvdX43xSsqVir7QXi1H
 0X/nNLU9iLB+uZGalwgWgl5L4PVeAaM=
X-Google-Smtp-Source: APXvYqySh2dm5C8yTdJddAWW6mq9d2RALMnSitjXV8aWgC+SiV85ujE3R+v6o3tjeE/bGRCMiADtdg==
X-Received: by 2002:a05:620a:11ba:: with SMTP id
 c26mr21353453qkk.201.1562768543720; 
 Wed, 10 Jul 2019 07:22:23 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::3:2bbe])
 by smtp.gmail.com with ESMTPSA id j78sm1069992qke.102.2019.07.10.07.22.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 07:22:23 -0700 (PDT)
Date: Wed, 10 Jul 2019 07:22:21 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190710142221.GO657710@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709230144.GE19430@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hlDUL-00DwVn-Un
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

Hello,

On Tue, Jul 09, 2019 at 06:01:44PM -0500, Corey Minyard wrote:
> > I'm really not sure "carefully tuned" is applicable on indefinite busy
> > looping.
> 
> Well, yeah, but other things were tried and this was the only thing
> we could find that worked.  That was before the kind of SMP stuff
> we have now, though.

I see.

> > We can go for shorter timeouts for sure but I don't think this sort of
> > busy looping is acceptable.  Is your position that this must be a busy
> > loop?
> 
> Well, no.  I want something that provides as high a throughput as
> possible and doesn't cause scheduling issues.  But that may not be
> possible.  Screwing up the scheduler is a lot worse than slow IPMI
> firmware updates.
> 
> How short can the timeouts be and avoid issues?

We first tried msleep(1) and that was too slow even for sensor reading
making it take longer than 50s.  With the 100us-200us sleep, it got
down to ~5s which was good enough for our use case and the cpu /
scheduler impact was still mostly negligible.  I can't tell for sure
without testing but going significantly below 100us is likely to
become visible pretty quickly.

We can also take a hybrid approach where we busy poll w/ 1us udelay
upto, say, fifty times and then switch to sleeping poll.

Are there some tests which can be used to verify the cases which may
get impacted by these changes?

Thanks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
