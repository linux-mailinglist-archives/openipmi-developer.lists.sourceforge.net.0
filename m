Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9755C28A021
	for <lists+openipmi-developer@lfdr.de>; Sat, 10 Oct 2020 13:10:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kRClp-0000Xn-ID; Sat, 10 Oct 2020 11:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1kRCld-0000XM-Vi
 for openipmi-developer@lists.sourceforge.net; Sat, 10 Oct 2020 11:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6cV+tWxBY2tCvh0w9RakejaDPboIY9tCeHrHg2GCiPA=; b=CLyR59CBeh/U/9mePkBuSvVBjW
 K0KGeuqIiPRe8wD5W+wNwedTLpEJSNRYoxW+Kd5NlM2VsWhS7n/qdo/lG/JUcw89JdBRFd7aqCLYA
 IZmpVWeM0i9TGdiox10lV3E/meEYvHVBKs2JZKDtPGKkLOHLQ7t0B1DCbC9OrvqOPd8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6cV+tWxBY2tCvh0w9RakejaDPboIY9tCeHrHg2GCiPA=; b=bGsVvgdIKHft0TIjqZ7s5Mu/Wt
 gRiZRs9hpYQWKtGE03I9mrd1SF0hqS8DTAhI3qK94kb3DJNUT/GJrKeRZZWloZlMF2tZYIiKCHSGH
 xOZd21aUYEN1+bnG+hd8SXxkCCTeOuk3AWlYj3JCSa0a7wWB/5hgOG9oC4HkBeFjlJLU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRClO-0058Qf-GA
 for openipmi-developer@lists.sourceforge.net; Sat, 10 Oct 2020 11:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6cV+tWxBY2tCvh0w9RakejaDPboIY9tCeHrHg2GCiPA=; b=eBUno4bXjQVLTMDPOm+sW25Lwv
 cowKD724NzwUh0wGoDX2eG2v9P5KJVKb8dHlTaXOU5VS9yonxo5dacyZ9QBDrEL6/NHu9yrFDVlul
 uJaKEt4lT+vM8kcKN1F9biakAjn/UcusJA6djK/yyy9on5fKvTsxSO+3sp/2KlZsoUnoiEKzwrMB4
 7TSBcjnZnVEnKSgMC/MZVlM/dgfJ6XN++gsUwy/SxMYtctBJGqU5CSC+MXoSkcGbzs6L+g82bBhNO
 Y/Lg46iD7UQGhyO+fwbJTDWyUte30Cln331o8ECV+9e4trlBM1tLfDi1pnpFFiEEQbQZdIxL/9tRX
 HbGqIARQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRCkg-00026L-PN; Sat, 10 Oct 2020 11:09:27 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3BEED3003E5;
 Sat, 10 Oct 2020 13:09:21 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 017E52010B5FA; Sat, 10 Oct 2020 13:09:20 +0200 (CEST)
Date: Sat, 10 Oct 2020 13:09:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202010091255.246395A6@keescook>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kRClO-0058Qf-GA
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

On Fri, Oct 09, 2020 at 01:45:43PM -0700, Kees Cook wrote:
> On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
> > On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> > > Simple atomic counters api provides interfaces for simple atomic counters
> > > that just count, and don't guard resource lifetimes. The interfaces are
> > > built on top of atomic_t api, providing a smaller subset of atomic_t
> > > interfaces necessary to support simple counters.
> > 
> > To what actual purpose?!? AFACIT its pointless wrappery, it gets us
> > nothing.
> 
> It's not pointless. There is value is separating types for behavioral
> constraint to avoid flaws. atomic_t provides a native operation. We gained
> refcount_t for the "must not wrap" type, and this gets us the other side
> of that behavioral type, which is "wrapping is expected". Separating the
> atomic_t uses allows for a clearer path to being able to reason about
> code flow, whether it be a human or a static analyzer.

refcount_t got us actual rutime exceptions that atomic_t doesn't. This
propsal gets us nothing.

atomic_t is very much expected to wrap.

> The counter wrappers add nothing to the image size, and only serve to
> confine the API to one that cannot be used for lifetime management.

It doesn't add anything period. It doesn't get us new behaviour, it
splits a 'can wrap' use-case from a 'can wrap' type. That's sodding
pointless.

Worse, it mixes 2 unrelated cases into one type, which just makes a
mockery of things (all the inc_return users are not statistics, some
might even mis-behave if they wrap).

> Once conversions are done, we have a clean line between refcounting
> and statistical atomics, which means we have a much lower chance of
> introducing new flaws (and maybe we'll fix flaws during the conversion,
> which we've certainly seen before when doing this stricter type/language
> changes).
> 
> I don't see why this is an objectionable goal.

People can and will always find a way to mess things up.

Only add types when you get behavioural changes, otherwise it's
pointless noise.

My NAK stands.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
