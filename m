Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 587A8A8A7FF
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Apr 2025 21:30:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u4lzU-0005Eq-Si;
	Tue, 15 Apr 2025 19:30:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u4lzS-0005EU-HZ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 19:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HDD6/twwcqeHpDaR6ey66qD2RyK51nGP7CNi1q0RLAk=; b=LcOKqYQAArFu39tmd454+R38m4
 wr8Re0iseWuLpHirnIswFKrY44wrs5TViAhTbhe+ZcaHxAZYBG8PT9zgg57/DvQZriYjRB/umyjek
 W7m6Me5zYT2f6eA1RDy1qjLsmjQIh+ifiTnd6b5ALUgJPOBhOSPneA45o60flVjfkq5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HDD6/twwcqeHpDaR6ey66qD2RyK51nGP7CNi1q0RLAk=; b=lF/RCbRpNV5qd2odYcjX+DUMq7
 u6eRQG2jW44SHsTvgvbOUnGQiJXMxSNEYyoLK6Hlh/qdSzyGbR6QM3OLq+XPH7XIdWREMw5z/w/4L
 fARKryaaK0qp8tqBpL1P9srsYQ07uBvXE+nClC8NtCSdePlnFfyRJ+1vfFlDTHW+2ysU=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4lzD-0000yI-I8 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 19:30:39 +0000
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-7c081915cf3so741349885a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Apr 2025 12:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1744745418; x=1745350218;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HDD6/twwcqeHpDaR6ey66qD2RyK51nGP7CNi1q0RLAk=;
 b=BVD/aI5xef/TuufnjFqJKdifGcwFkToLrZUYskpcCKnycpXh3ukhTSgexknUSHJeX+
 LneEl5+rsQkBzbGAMf3hfqMx18tWoOYgyPxXIUL66+WOwQU9pBCjUr3LZUw7iymmajre
 YfX3ls6yUFdBtQHuWY9lOIsXjNjAUSUqXB31UtXtjoQwoOfOobWeQ7gXSeFlLoITut0V
 VnFt2jP35mcfZ2t4EYy75Z+YswggbPDOdhwn86q1ZIJRB53jDs+rfE60h7ykd8KciKHv
 ukGtXg+fJeIqU9dbd3mM6NcD5KHJFtA850Ank4qFKvm/E8rLkvwLx5Jjc9+zfUxjmw1D
 L1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744745418; x=1745350218;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HDD6/twwcqeHpDaR6ey66qD2RyK51nGP7CNi1q0RLAk=;
 b=qCgr1mKJ7wpuutRFpvJBXj6aBUT0siaoz2dVAUzbHVRfa1wSXPyOA0r4t8Bf+Mf587
 N29bANOpHdmIdaadbL2k/bEk5OYOqGdxPO37pVNIvLoUdSLR7/ETmmoGDoSTR69n3o0z
 pJbOL8SUNeYi7rWBh7CUKwsC4RjGv/uCJ9ghz0swFOpGBt4nVwYjQIogsYLgDNGNkmbg
 +zsVp8hQHqduvM1/HB3jU/uSW/0yyvFBbJGY3ASLAjuCMyTgR376izqKiM4LaXjFQceO
 6Ncu7rIfvlTpPiBC3hAdF6ZcBfqA5TUQGndUldVNF/9+d9ZnfYhHju+/KlRLkh97lzp9
 PoFg==
X-Gm-Message-State: AOJu0YxOd3675qZtyPydYPVF4nQ3FgU9my+rJhgfbW4MTrEBMBSUT03Q
 eB29DMRYHCHzvp5sv9pz6gockaqd/EEU83JLNr6+ejKKwmXXF7DTZcapXfCZJHsn1GcWlqQWpFF
 e
X-Gm-Gg: ASbGnct0GsnyUw/KH5CYn81VSTZCT7BAKIkhYMBqM/Ago27ORP/yrQHCV1PCbSoLuv/
 xfgHt8oiOijzQMJaoVbDeAz0a3E/ECToUYaZ/Fl32v945c6gRIzfZM76Gay2Y0hoQhO9a0rS6It
 IWn7iPKXuEr1ShM7BalRdVYK4tOXML9nWffslCcD9bvepwrXAropiImeWqRzgi1NJicWpTkKw/t
 WD95GCfgGi0emDMCD8Hxj8b7OJPhEm5kX/eHdjDZP9RULzAhMW5fV4WqpanX5ifZUNqfyjjiq6h
 FdChYwXsscgaOn/t3V41UpvYQmGBO4oeJ19JYgVWnzYp
X-Google-Smtp-Source: AGHT+IHec809ILFcycahfM0VKkH+r05JKpLlCKPhNTFCZi13JrfPzVw3LdxpPb3vtYm3PumnN0HUQQ==
X-Received: by 2002:a05:6808:2027:b0:3fa:8bfd:7721 with SMTP id
 5614622812f47-400acb71518mr460901b6e.27.1744744153932; 
 Tue, 15 Apr 2025 12:09:13 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:10d8:195c:4f40:9213])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2d0969b722fsm3020469fac.28.2025.04.15.12.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Apr 2025 12:09:13 -0700 (PDT)
Date: Tue, 15 Apr 2025 14:09:00 -0500
From: Corey Minyard <corey@minyard.net>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Z_6uzH9DsWIh-hIz@mail.minyard.net>
References: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
 <Z_5FV65cyIwiI9rs@mail.minyard.net>
 <Z_5L1J11W-ArXcUe@smile.fi.intel.com>
 <Z_5NDNeDztC1-6vx@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_5NDNeDztC1-6vx@smile.fi.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 15, 2025 at 03:11:56PM +0300, Andy Shevchenko
 wrote: > On Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko wrote:
 > > On Tue, Apr 15, 2025 at 06:39:03AM -0500, Corey Minyard wrote: > [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.222.179 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.222.179 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u4lzD-0000yI-I8
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] ipmi: si: Cast to smaller
 integer type without warning
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
Cc: Justin Stitt <justinstitt@google.com>, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 15, 2025 at 03:11:56PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko wrote:
> > On Tue, Apr 15, 2025 at 06:39:03AM -0500, Corey Minyard wrote:
> > > On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko wrote:
> > > > Debian clang version 19.1.7 is not happy when compiled with
> > > > `make W=1` (note, CONFIG_WERROR=y is the default):
> > > > 
> > > > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> > > >   268 |         io.si_type      = (enum si_type)device_get_match_data(&pdev->dev);
> > > > 
> > > > Fix this by intermediate cast to the uintptr_t, that makes compiler happy.
> > > 
> > > Unless things have changed recently, Linus prefers "unsigned long" per
> > > https://patchwork.kernel.org/project/linux-hardening/patch/20220616143617.449094-1-Jason@zx2c4.com/#24899749
> > 
> > I'm not sure I got your point. That discussion seems irrelevant to me.
> > They are talking about pointer-as-an-integer cases. Here we already know
> > that we are passing integer-as-a-pointer and this is the opposite
> > conversion.
> > 
> > > And it would match what is in the match table.
> > 
> > Match tables are tend to move to pointers, enum is usually goes to int.
> > 
> > > Is that change ok?
> > 
> > If you don't like my change, please do yours and consider this as
> > a bug report that needs to be addressed. I prefer more my solution
> > as we do that in many places for the exact scenario.
> 
> Note, the proper solution to the cases like this is to move to info-like
> structure and actually operate with the pointers instead of enums, longs, etc.
> 
> That's what's slowly moving on in IIO subsystem, for instance.

Yes, you are right, I'll probably make that change.  I'm not sure
about the uintptr thing, but I think the right change is to do an info
structure.  I never liked that code as it was, anyway.

Thanks,

-corey

> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
