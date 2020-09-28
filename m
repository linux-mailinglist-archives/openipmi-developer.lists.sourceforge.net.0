Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1271227B664
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Sep 2020 22:34:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kMzrI-0002kn-BQ; Mon, 28 Sep 2020 20:34:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kMzrG-0002kg-Ry
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 20:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=; b=AEVX9LCZJhm3Ua1vNVaQj0L1ii
 JMbbWWEdhYNR+ISjiYmX6+EPGL3uLnrudS7Ws1HedHzw3rEfjs73cEAsBheGbQBpqQZ0bETccQowu
 PIQ/xzikZGE+zEPoAwGMvIhRAwZc5pKCuP04aUP56sQVm8+IiIH+IPBMObVr4tuK2wPQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=; b=KjkFFPpGyvFSXDS546zKCWhEbj
 z1v5qlSDIVChHI+DR76RHUSKZG1XavfBQ0OYWnuNE21HEFTmI3YXToK3df71f1DMjwchnMPQ8DXmh
 kjExvfHAaLBoDRsnIy3ZZA9Y2BdtwLPVWlNnTmPzJwIaheoJYd0jq13V1fMLi+TohV0w=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kMzrC-00C11u-FS
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 20:34:50 +0000
Received: by mail-pg1-f193.google.com with SMTP id x16so1924729pgj.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Sep 2020 13:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=;
 b=NhEgCMqvIk+RvaHqH61RFdho/oyavhy1mnawXx73Z32KtMmWrdQ3TF3Wdl5xGJWAF4
 HJ7MvCec9xWmOfe2vmH4pRHVPw4F2RLEFJS+4IHA6SOXqWq1vixOup+3/VsF76zS/3fH
 NNK2l+sjcwTbNoDengDe+AnKeGhAQtj5ceh68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fSqGGre3K5gDxqZQhBBAgkB/XW4ArHnxdL9/PVe8UEw=;
 b=HNPqZ3jNpxN/UXN2+m75OJ0CmYEAVBfU6u1RF93FcB5LI1c7HqYyOrPG5zsHaKwItr
 W/jYtjVIItFY9uqCJyy+pZhMiVe8gltKTKbDnCBGcC4krkoSqQsQPY7oP2VsASaut1of
 GnBt+V7eNfHltrgeMOtijGn9gEWqr6nyCNDrV+QFTbnEcvpd4ChYywXZbz8jz5pA1c9H
 r+b4XyKbIFH6XBzIyLAUkg40cc4imVofO/y5tgDWyAuU5aAlqkGI8QwJ8VT9W+yUouH6
 2g6+PJiDGN0uCMI8QSrnx7BzjHfuPo8QizPCEiBXqtNnSOcQe3mNRQZXnFMMMpsvyA2h
 Ipyg==
X-Gm-Message-State: AOAM533gL2z054sFpzyNqHrcVXUN2islwoC+sn5y+/qMv00THrVTwfb7
 XJGdjXhgNRlrOEXXbCVZIILXyw==
X-Google-Smtp-Source: ABdhPJyzYBgjXDVfi/ERFQgeS7WYZoqBnC+zZTP9Vn+PQLPLjF+pMQ37sNjCiSdOAaPnfO95UdERzg==
X-Received: by 2002:a17:902:7589:b029:d2:686a:4ede with SMTP id
 j9-20020a1709027589b02900d2686a4edemr1142882pll.45.1601325273788; 
 Mon, 28 Sep 2020 13:34:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t14sm2209702pgm.42.2020.09.28.13.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 13:34:32 -0700 (PDT)
Date: Mon, 28 Sep 2020 13:34:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Joel Fernandes <joel@joelfernandes.org>
Message-ID: <202009281331.444F36A7B@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <20200927233526.GA500818@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200927233526.GA500818@google.com>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kMzrC-00C11u-FS
Subject: Re: [Openipmi-developer] [PATCH 00/11] Introduce Simple atomic and
 non-atomic counters
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net, surenb@google.com,
 linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Sep 27, 2020 at 07:35:26PM -0400, Joel Fernandes wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > This patch series is a result of discussion at the refcount_t BOF
> > the Linux Plumbers Conference. In this discussion, we identified
> > a need for looking closely and investigating atomic_t usages in
> > the kernel when it is used strictly as a counter without it
> > controlling object lifetimes and state changes.
> > 
> > There are a number of atomic_t usages in the kernel where atomic_t api
> > is used strictly for counting and not for managing object lifetime. In
> > some cases, atomic_t might not even be needed.
> >     
> > The purpose of these counters is twofold: 1. clearly differentiate
> > atomic_t counters from atomic_t usages that guard object lifetimes,
> > hence prone to overflow and underflow errors. It allows tools that scan
> > for underflow and overflow on atomic_t usages to detect overflow and
> > underflows to scan just the cases that are prone to errors. 2. provides
> > non-atomic counters for cases where atomic isn't necessary.
> 
> Nice series :)
> 
> It appears there is no user of counter_simple in this series other than the
> selftest. Would you be planning to add any conversions in the series itself,
> for illustration of use? Sorry if I missed a usage.
> 
> Also how do we guard against atomicity of counter_simple RMW operations? Is
> the implication that it should be guarded using other synchronization to
> prevent lost-update problem?
> 
> Some more comments:
> 
> 1.  atomic RMW operations that have a return value are fully ordered. Would
>     you be adding support to counter_simple for such ordering as well, for
>     consistency?

No -- there is no atomicity guarantee for counter_simple. I would prefer
counter_simple not exist at all, specifically for this reason.

> 2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
>    the atomic and atomic64 naming currently used (i.e. dropping the '32').
>    However that is just my opinion and I am ok with either naming.

I had asked that they be size-named to avoid any confusion (i.e. we're
making a new API).

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
