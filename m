Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F314286743
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-00088c-4u; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel@joelfernandes.org>) id 1kN0uo-0008D5-Uu
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 21:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=; b=dIpE28dCfnMjTsemaESjnUQBWT
 PBTPz8VJrqiWNFj0Il/NloJUQZbr3Qq7qmY9R4wxCwrubCVw25X5nORjTzcopDRI12+uWWtcZN4Yo
 5dwFaH75qdknG2kU8hiPV9WTiklZoq01A1s4xf2TN2Bch45FH9BYcIcsHrs83b7c1n3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=; b=ZWtuIn+GZQxyA/DQzzPVjpZKFO
 Hj+0hUj7fYx650ZDQlwquhZ50tNYr6zgQy6rf6Cx09n85kv8TgDNk5t6KKces+VRS4hMRq1XPsJpe
 hG3aCGQSjAe4ZmRCe0abiGkjeUqLzv1sLKY4fOHC47HIS0QlLmpk9w2RP8TYD3RT60JU=;
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kN0uk-009JOx-Gr
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 21:42:34 +0000
Received: by mail-qt1-f193.google.com with SMTP id g3so2001779qtq.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Sep 2020 14:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=;
 b=E/E+O1Kdz8L/LgV+e3noNHmCUepRX8tYRdZmhvH1oqH1ALQLGP9YZ/dETKdHtGk05j
 wpvbZI+tcv1EpJog3kH/xRzfufYZLAbq6RvYEyNhs/6/SDQpmj5TkCNNlF085WCvLpfS
 QF38VkMXId3KqzhLsBF8KxCGWUfAw8jaSZCwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TsieN2AyZd+fHurZfoVnAsK/371QDPaE9PSaaOsF10M=;
 b=bnAOdSprA0Mq0otXnn8T+jjlXvUjcoJ8goQ2LEI6/fsmUbjUCGIsec8tPwdzWbDvJU
 C+sc5Se8+XNS3pXxEc8yTF9NA4C8pzbymhDjpnDLcoCwFor9i7c2z3FOkr1Cdf/tpzLY
 WEZzFYQxDABHGR2WuCOh7Mg/xr2HfpRw32MHj0duj+qxAi7wiYJ/eKmSIxTl2LRF6iL1
 /MMAnvzzDIO+fD6jwSaiN+7ES9mROW3+rnAtq4Iy3FEVUaqCCn64jcoynQ+kUB2CP3j2
 10QRcsQSnkfcFiTVt0VFQZyd6oehELaW346TIlGDCLcZw04bddYil55lcnmZHmSY+fmE
 wYTg==
X-Gm-Message-State: AOAM533tGtc1o8KxPbZ/U1jwbCf0WBZ7iY1DSdPsOhLsEG4nOBjJ7q5W
 05eXC0QpL68Iv1zUyggf3D2ZdfLICvy+JA==
X-Google-Smtp-Source: ABdhPJzchTLFzFK6iluf3Jf7o3/ZyyOrcF3IVJNDVf1TIaEdhxhcd/ElF3y6FMMqh5p80QFSd1shxA==
X-Received: by 2002:aed:25d1:: with SMTP id y17mr11236qtc.375.1601327830218;
 Mon, 28 Sep 2020 14:17:10 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id x26sm2483053qtr.78.2020.09.28.14.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 14:17:09 -0700 (PDT)
Date: Mon, 28 Sep 2020 17:17:09 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200928211709.GA2641213@google.com>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <20200927233526.GA500818@google.com>
 <202009281331.444F36A7B@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202009281331.444F36A7B@keescook>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kN0uk-009JOx-Gr
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
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

On Mon, Sep 28, 2020 at 01:34:31PM -0700, Kees Cook wrote:
> On Sun, Sep 27, 2020 at 07:35:26PM -0400, Joel Fernandes wrote:
> > On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > > This patch series is a result of discussion at the refcount_t BOF
> > > the Linux Plumbers Conference. In this discussion, we identified
> > > a need for looking closely and investigating atomic_t usages in
> > > the kernel when it is used strictly as a counter without it
> > > controlling object lifetimes and state changes.
> > > 
> > > There are a number of atomic_t usages in the kernel where atomic_t api
> > > is used strictly for counting and not for managing object lifetime. In
> > > some cases, atomic_t might not even be needed.
> > >     
> > > The purpose of these counters is twofold: 1. clearly differentiate
> > > atomic_t counters from atomic_t usages that guard object lifetimes,
> > > hence prone to overflow and underflow errors. It allows tools that scan
> > > for underflow and overflow on atomic_t usages to detect overflow and
> > > underflows to scan just the cases that are prone to errors. 2. provides
> > > non-atomic counters for cases where atomic isn't necessary.
> > 
> > Nice series :)
> > 
> > It appears there is no user of counter_simple in this series other than the
> > selftest. Would you be planning to add any conversions in the series itself,
> > for illustration of use? Sorry if I missed a usage.
> > 
> > Also how do we guard against atomicity of counter_simple RMW operations? Is
> > the implication that it should be guarded using other synchronization to
> > prevent lost-update problem?
> > 
> > Some more comments:
> > 
> > 1.  atomic RMW operations that have a return value are fully ordered. Would
> >     you be adding support to counter_simple for such ordering as well, for
> >     consistency?
> 
> No -- there is no atomicity guarantee for counter_simple. I would prefer
> counter_simple not exist at all, specifically for this reason.

Yeah I am ok with it not existing, especially also as there are no examples
of its conversion/usage in the series.

> > 2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
> >    the atomic and atomic64 naming currently used (i.e. dropping the '32').
> >    However that is just my opinion and I am ok with either naming.
> 
> I had asked that they be size-named to avoid any confusion (i.e. we're
> making a new API).

Works for me.

Cheers,

 - Joel



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
