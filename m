Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD85FA65002
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Mar 2025 13:59:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tuA4L-0001GP-Oq;
	Mon, 17 Mar 2025 12:59:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tuA4J-0001GH-Ki
 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Mar 2025 12:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ql7cl1jivUxEVgcKx4CnZzoPILXMvLJsMTxxnU4+Wwg=; b=QZyiC12fY2Sl5oH0lLBnD0CiZF
 sgEpakzE6wvNqw1i/BxGSDUM17y5tcLdYmSJoampaEPHCDNDuP5gVx+5F5bVC7QxOdHeaEhNhQdD8
 493LRAkdj/O7eujQ/M0O7goJCwdOOzvv55or8eU8SBjQ1abLSmLiEUKEcGO/hXIV5y94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ql7cl1jivUxEVgcKx4CnZzoPILXMvLJsMTxxnU4+Wwg=; b=TT0nQo5s/HqqG2RA3gh82b8e3W
 GV8SHh+ZfrMjb/17pEB8u9LhZIUbX8iaCz76qzAkvxLq3wSdF0v9D4Ih+XSE3OnEuHw58XwKwv5tq
 /XIL4jpoQmKqWEt0uQmslkjyGo6atjAi5swcHJRObXmUQzzxC8vnpmzZF7cE+xrEKZ6I=;
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tuA4D-0006YJ-77 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Mar 2025 12:59:46 +0000
Received: by mail-qt1-f178.google.com with SMTP id
 d75a77b69052e-47664364628so46841651cf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Mar 2025 05:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1742216375; x=1742821175;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ql7cl1jivUxEVgcKx4CnZzoPILXMvLJsMTxxnU4+Wwg=;
 b=2zmFr2MxCHPrQZ8HBJ9/Qd4LKxsSi4m6epP1jfMGXZKh3QcM53eeeiSrXDbvtfNbe2
 eA25WxcIkL2eLHBqXbajDmcVAoxLyfbTmK+/zNsNsDvTTA4reJdUzrj6kpCU2UTIINle
 epsQzGqkUTDFHutIQQNDe7qjXOb2NXUmCoZYu875wwCScBYyQ84JjyNAposSePFPXgSN
 KjX5aKWTXb2pxqutc/CTpSgC/fGeKe8eVyBk4Sfz0puWe/LcMS3oONxEk8s7UuNx3h38
 xpImiE995NpHS9W0eoRz3W8gso8l/QvXZhnsLI9xsLBfhz4v5S0I9qQj71V0rimDY3y7
 NXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742216375; x=1742821175;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ql7cl1jivUxEVgcKx4CnZzoPILXMvLJsMTxxnU4+Wwg=;
 b=ivrJgEZS6lPmwXUAud6/sP/IALetjmnEKahTebM9TE3CNUTmqeN2t/qw1GzCT3Ml4x
 fViRE8e0yW03Tk9ThKxlJAwFdZVDMNpSIWT6bkuRY7NDQOrigdY/lCmwu6qKZaQXrgun
 TZUTJ/QbE/w4cC6tWjHTmCgD/nJTUxWt0MIQ1yvhWzKXgoI3vZR9JuQMvKOAhJR8EnqT
 cEMDehW6yRWrGcjei3/b/yI1ovpYnWf1manl2LQ5Tuzc4FKU2qtY12d8wiSSsP20NJYu
 qS5g0FMwILdGFQlAIP4qRr8qhm37wUkn5xpkODKBi/XJl1Uk3NVhmtqXLWPIIpR6xL0s
 eGtg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyg+j+Sfzyiqf3lvoKdVAScpxWOqWbfIAwkPlZGLKZ+2hcviH4kdhGw1UGc3NnXzyiJeLJAQTcc1Th9Ozsx6tAJu4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyJ80xYS+hE8egj2BKsairB1NS2yLr5csCKHkEExwpdJxMAabav
 E/zIPbmMdZuvnt6ZUog5ZtOfjeYNROe0kCtix/bCoYkwVt+3X74qxFp5BspbUQ7n95L/SeC5wQm
 O
X-Gm-Gg: ASbGncuzL474pOblWDXGXm96ljItMkh2lGZZBQO/ko4qHKBlsuT/tTajQwNa8UKeJQy
 ppkquaNKZLg/ik7DFrEENVzeE/TtlEa9CMtmCjhWdH1ksKVwJXbz5jQBjMMdUp+bZfZo+B3fFV/
 S4HA/9Q45lh8qXMxNYLKklkyEAT3VeF7IcuksWY/XmTbyzzV+jSVfyQrVye/fRuBSf3Vha9spfS
 bbSoSCuSRrufCRHXuLBAURo4QWyWxFRHtDa5ujmNoylh7XaTLp2dtQ3gYyO98OX0MVH4c8S45IK
 am7RjVygWVilgoEIBwo4rY66LtkTmxuty1Wq6mcDBktdj58U
X-Google-Smtp-Source: AGHT+IGgAd8DQyYluWrfbCBtW7BNHVC6cJ+9kFyNdt5BjTXSIYza/k/RcKCulIQI3qlDd75/UV+Brg==
X-Received: by 2002:a05:6a00:6993:b0:737:cd8:2484 with SMTP id
 d2e1a72fcca58-737106f646emr18394790b3a.6.1742214457512; 
 Mon, 17 Mar 2025 05:27:37 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d417:d7de:22d4:4d1b])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-737116955f1sm7655024b3a.142.2025.03.17.05.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Mar 2025 05:27:37 -0700 (PDT)
Date: Mon, 17 Mar 2025 07:27:30 -0500
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>
Message-ID: <Z9gVMuEMk9yNNL89@mail.minyard.net>
References: <20250312131932.44d901f7@fangorn>
 <20250317-horned-nano-degu-a6e5bc@leitao>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250317-horned-nano-degu-a6e5bc@leitao>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 17, 2025 at 02:33:31AM -0700, Breno Leitao wrote:
 > On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote: > > On recent
 kernels this warning fires: > > > > drivers/char/ipmi/ipmi_m [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.178 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.178 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tuA4D-0006YJ-77
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix suspicious RCU usage
 warning
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@meta.com,
 linux-kernel@vger.kernel.org, "Paul E. McKenney" <paulmck@kernel.org>,
 Rik van Riel <riel@surriel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Mar 17, 2025 at 02:33:31AM -0700, Breno Leitao wrote:
> On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
> > On recent kernels this warning fires:
> > 
> > drivers/char/ipmi/ipmi_msghandler.c:1238 RCU-list traversed in non-reader section!!
> > 
> > This looks like a fairly simple lockdep trigger, where
> > list_for_each_entry_rcu and list_for_each_entry_srcu are
> > functionally identical, but the lockdep annotation in
> > the former has an extra check.
> > 
> > That extra check is whether the RCU read lock is held,
> > which is not true when the code uses srcu_read_lock.
> > 
> > Get rid of the warning by using the properly annotated
> > list traversal macro.
> 
> Thanks for looking at this one.
> 
> There was a discussion about this issue a few years ago, with
> a different approach that never landed upstream.
> 
> 	https://lore.kernel.org/all/20201119123831.GH3710@minyard.net/#r

I thought this looked familiar.

Breno, I believe you suggested a change to the patch that sounded
reasonable, so I removed the patch, and then nothing happened and I
didn't follow up.

This is kind of a mess :-(.  Let me look at it.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
