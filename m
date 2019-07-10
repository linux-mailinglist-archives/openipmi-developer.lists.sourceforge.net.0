Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6EF647D1
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 16:12:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hlDKO-0002zo-R6; Wed, 10 Jul 2019 14:12:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hlDKN-0002zf-Mf
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 14:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+fGZCi8l8k2+XYBzGCpVW2KcBvE0y5ReGvNijsYR1so=; b=fGHd2KkI6u+hcc4L3kglu8eVXf
 h8PAymxDPE103/yWuu4XI3oigaDRxYcNrG1waI7e3/4DX6qpMLhs3q9QEuFiviwwXBXDwKHg4MTN6
 ZP+S0jsFBhdxb4oSsro+U8mOi5ZtTT6JVWDuTdoByKhb2l8QsLslnGwMnYBXDR63i5Vc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+fGZCi8l8k2+XYBzGCpVW2KcBvE0y5ReGvNijsYR1so=; b=kAYIDtGg32zMZ/J06VUsZ8Zu5/
 2hLODCZq01d23JKSp3JHlPoQxaIIfxtFv3Pn3jxlCAdxMqyn90ow+AD4rK7bdgIuAzbYpFVs2BMSj
 bDcvxoViYi+PxVXrfnCrAoq/0MHmPCW/ir2G1tMnTsNZ1LTPJFmiJO7VvkW8hNAmQbkI=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hlDKM-00Dvzm-9P
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 14:12:11 +0000
Received: by mail-qt1-f195.google.com with SMTP id h24so2583697qto.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 10 Jul 2019 07:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+fGZCi8l8k2+XYBzGCpVW2KcBvE0y5ReGvNijsYR1so=;
 b=CvycXqBbWFtAQGAyh0N9qj4kPJaC+fM3G84OJ+JuynfIwKAPZMeYCQUZOFomOfrCJd
 A2MECOaFl5xTmdG+RljX9d84uzHrfZ57lhAplvskafylhAaBhH5uy2S+7SG9ltB+Gr2f
 q2CxXJ3ET0ee8ZvK5QFcucgYOTEq41gULlkfC9/3J1yLv5TbkNahMBRYzfqL8zlhVfox
 84871x5kZ03YnJzZ2t1/KSYK2pZz+LhlLYCu7ydrup7wivoZ383x+T0NPx/BajSdMju3
 /BlBXGr0WbjCDDmNU8AOc03ufdrIJYWoSPWo2f52MOvLaQzCvjFPN2xrC9lRn8gjpqsA
 hQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=+fGZCi8l8k2+XYBzGCpVW2KcBvE0y5ReGvNijsYR1so=;
 b=OBDM0iHRRHTVT65ofTwFEuYXXRTGof9B5HapkbPN4sM69/FMPNGhqQzxHSDwlmDipf
 1klzGWtkAfdOkH9fK2goh0pfmbsHVH/2jczm7+x2P9Es+KvY/PiMMjvTNOk5TG88R+eu
 mJk9Qhbezbbq5vJnH69kZuq7U1cXpXTn5sEB1ZgHh8kPXyx13ejbNtw4xV4L73fschFo
 SPmYXtV+0AbBtmyU3tPSSGFtBv6unUl9FK1xmahxGvU3FXD7fVwefy4yRjrpZE7LmF1k
 iVvbRptIm7QmxK6xhEKP0ldgVrGUa0uJGE2vniy3oN0xDq6DbMmf7a43cyesAQemSuaI
 6IvQ==
X-Gm-Message-State: APjAAAXQDqoRT6M3UAiNlERs/ouElwU0krlap9oQI26E4MIi9H5sYvaA
 32/1BRKTFszmnpr8yySdUQU=
X-Google-Smtp-Source: APXvYqy6QP8PtjcfkioSt7+66/de3FwELV/kF4ADw0lzESr7POOgv/jRoeZMQuL9GlEbjqP/VtVpnQ==
X-Received: by 2002:ac8:5042:: with SMTP id h2mr20098496qtm.96.1562767924027; 
 Wed, 10 Jul 2019 07:12:04 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::3:2bbe])
 by smtp.gmail.com with ESMTPSA id r4sm1789171qta.93.2019.07.10.07.12.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 07:12:03 -0700 (PDT)
Date: Wed, 10 Jul 2019 07:12:00 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190710141200.GN657710@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709221147.GM657710@devbig004.ftw2.facebook.com>
 <20190709230703.GF19430@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709230703.GF19430@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hlDKM-00Dvzm-9P
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

On Tue, Jul 09, 2019 at 06:07:03PM -0500, Corey Minyard wrote:
> I believe the change was 33979734cd35ae "IPMI: use schedule in kthread"
> The original change that added the kthread was a9a2c44ff0a1350
> "ipmi: add timer thread".
> 
> I mis-remembered this, we switched from doing a udelay() to
> schedule(), but that udelay was 1us, so that's probably not helpful
> information.

I see, so it went from non-yielding busy looping to an yiedling one.
And, yeah, udelay(1) isn't much of a data point.

Thanks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
