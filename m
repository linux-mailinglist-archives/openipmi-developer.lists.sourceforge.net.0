Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C67182891D6
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 21:38:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQyE6-0000Gs-0q; Fri, 09 Oct 2020 19:38:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1kQyE5-0000Gl-8C
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 19:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zLIUwi6of4TVrIDqm7ubPP1mBc2NCjeZDMTgFgFGRzs=; b=AeWwMB1ou+A03MijaHp0viyyE6
 2NClT/54vMOxDErR5O2wTxB80r4wtcl/h2pB0EoiU1xovja25fBAShCjMaGkOJ8yOb7PsHA5n6X5Y
 hgO5bPJEG7V5isXC7sXdxXoXQMFLJVRNRnw2CLbarYuWeNq8KLKPX46gemA81xfh1Ukk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zLIUwi6of4TVrIDqm7ubPP1mBc2NCjeZDMTgFgFGRzs=; b=HlF6mbGL9hB2nOCURnuiX6D5EF
 1WAEOWtFhbw9VhjHtcR8dWpzcaiYJzxeAnQ1D0P5y4uek95Ddn3m/5wqBgGT9cQ9gBldj0RCf7PHh
 UDbyE13JEz4nItkrqegVOPITIyHaTG3Gn75cD+leXXLzrwpuC3Tk/is2TPxVOhkefSZ0=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQyDp-004Ziq-18
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 19:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zLIUwi6of4TVrIDqm7ubPP1mBc2NCjeZDMTgFgFGRzs=; b=I6zPCWGlxvFkdnxvrDnYKEl/Ki
 DXahwbFmj8CjDIv2zMKJsaj6l/PlLp8BW5A0fPAU4uqSuQGhJS3sD1uqSXqLZsZPfeunh4DOuvE5n
 xcAkyW8lqrSSh5xrEFlC41DOYpQEF9SrAicmyGJ430dnnoVtcX/QPBM62kwEDMrJAwz/sPodMxPwi
 rniweX1LZSEw/l1kQK555JY2mb9g3xfm5vkM0coqpPB85Q8CpKpM5X//PwBU8gQO6FVTQsZoJPZW5
 4oQFUewmHOTq8XMVe/CMjko1SUyh1NgLkQG9fMzAroffdR7hY8fxRacfuL07WCx65S+XYIFoHiMvo
 T+yGDamA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQyDC-0007fm-TI; Fri, 09 Oct 2020 19:37:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D9571300B22;
 Fri,  9 Oct 2020 21:37:46 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9CBE320AEA644; Fri,  9 Oct 2020 21:37:46 +0200 (CEST)
Date: Fri, 9 Oct 2020 21:37:46 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1602209970.git.skhan@linuxfoundation.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kQyDp-004Ziq-18
Subject: Re: [Openipmi-developer] [PATCH v3 00/11] Introduce Simple atomic
 counters
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
Cc: rafael@kernel.org, Will Deacon <will@kernel.org>,
 linux-kselftest@vger.kernel.org, joel@joelfernandes.org, shuah@kernel.org,
 devel@driverdev.osuosl.org, arnd@arndb.de, corbet@lwn.net, surenb@google.com,
 linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 tkjos@android.com, keescook@chromium.org, minyard@acm.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> This patch series is a result of discussion at the refcount_t BOF
> the Linux Plumbers Conference. In this discussion, we identified
> a need for looking closely and investigating atomic_t usages in
> the kernel when it is used strictly as a counter without it
> controlling object lifetimes and state changes.
> 
> There are a number of atomic_t usages in the kernel where atomic_t api
> is used strictly for counting and not for managing object lifetime. In
> some cases, atomic_t might not even be needed.

Then the right patch is to not user atomic_t in those cases.

> The purpose of these counters is to clearly differentiate atomic_t
> counters from atomic_t usages that guard object lifetimes, hence prone
> to overflow and underflow errors. It allows tools that scan for underflow
> and overflow on atomic_t usages to detect overflow and underflows to scan
> just the cases that are prone to errors.

Guarding lifetimes is what we got refcount_t for.

> Simple atomic counters api provides interfaces for simple atomic counters
> that just count, and don't guard resource lifetimes. The interfaces are
> built on top of atomic_t api, providing a smaller subset of atomic_t
> interfaces necessary to support simple counters.

To what actual purpose?!? AFACIT its pointless wrappery, it gets us
nothing.

> Counter wraps around to INT_MIN when it overflows and should not be used
> to guard resource lifetimes, device usage and open counts that control
> state changes, and pm states. Overflowing to INT_MIN is consistent with
> the atomic_t api, which it is built on top of.
>     
> Using counter_atomic* to guard lifetimes could lead to use-after free
> when it overflows and undefined behavior when used to manage state
> changes and device usage/open states.
> 
> This patch series introduces Simple atomic counters. Counter atomic ops
> leverage atomic_t and provide a sub-set of atomic_t ops.

Thanks for Cc'ing the atomic maintainers :/

NAK.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
