Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B993428DCAE
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Oct 2020 11:18:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kScv8-0005rO-KO; Wed, 14 Oct 2020 09:18:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1kScv7-0005r7-QI
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 09:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oSoCzew+YknB0dx5EoXOzxp1GOMgWSJZPnYxGNWDbHw=; b=WhH0nOx3NDbLgXy/I0ycUyUdyW
 aeSe/4GIfwgbPRFa31AiEyO4hEJEgOT23OyJQhWKFPm9k6MCuzz469x1oxuBHosknoVo9oTmfNUWm
 b01CzQDRl+m1ECnP3Ogk1AYfurud2qIMCl1ayiNj3eNdPEkbiAFEbIRREVEAuNUkMriY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oSoCzew+YknB0dx5EoXOzxp1GOMgWSJZPnYxGNWDbHw=; b=M8ydkm80pXub0SOQMEfXmFJL5J
 L00S9+lmMjT/MyfZWNg2gaB7Tei7n1+/o1J70TI02PrF+vDKLQ7ev0O9/bkpZs9nzDuRi6VYQ1+Ny
 5Hs96IDh/umZcXdODN+sYWWGLt38MPAv28LJTqF1dh+S8aEJbVytNpbsxe2R3S+yyRdU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kScuu-009ttS-NH
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 09:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oSoCzew+YknB0dx5EoXOzxp1GOMgWSJZPnYxGNWDbHw=; b=bbHVobEMV+gxKJvM2yym+cXIBq
 fr+AXG56PjCs1dnTUCUFhA1KXpxjWdj+INB1pvURTaabIE118jh6jK8Ie8/ARC+Pmgp45nmv/ifqS
 mqDWYvAzc8+sJ/BAxkz2sVSKdNFeujBFY8Ovj+C/cNykURt2cFMx2UNiPpfD9qHUfsCmiLFejXHxP
 emit1XplFzfQI+kL4BAibB+Bb6r/6UqlL6KbtRTBCtsFKGKALZpQ7G5AGARKpVFfX42onYfwZPB/b
 F0er87EC0E3DR0lqy3cCSF/VE4aSvCn+U9OI1AMBf4CG5GRBlyMf0BFwjrx22xyBB8UuD8IQ0wcrM
 uSW/YzsA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kScuP-0000Ui-V4; Wed, 14 Oct 2020 09:17:22 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 46051304E03;
 Wed, 14 Oct 2020 11:17:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 21495201A8541; Wed, 14 Oct 2020 11:17:20 +0200 (CEST)
Date: Wed, 14 Oct 2020 11:17:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20201014091720.GC2628@hirez.programming.kicks-ass.net>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
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
X-Headers-End: 1kScuu-009ttS-NH
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
 tkjos@android.com, Kees Cook <keescook@chromium.org>, minyard@acm.org,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 13, 2020 at 08:12:20PM -0600, Shuah Khan wrote:

> They don't add any new behavior, As Kees mentioned they do give us a
> way to clearly differentiate atomic usages that can wrap.

No it doesn't! atomic_t can wrap, this thing can wrap, no distinction.

All it does is fragment the API and sow confusion. FOR NO BENEFIT.

> > Worse, it mixes 2 unrelated cases into one type, which just makes a
> > mockery of things (all the inc_return users are not statistics, some
> > might even mis-behave if they wrap).
> > 
> 
> You are right that all inc_return usages aren't statistics. There are
> 3 distinct usages:
> 
> 1. Stats
> 2. Cases where wrapping is fine
> 3. Cases where wrapping could be a problem. In which case, this API
>    shouldn't be used.

And yet, afaict patch 4 is case 3...

> There is no need to keep inc_return in this API as such. I included it
> so it can be used for above cases 1 and 2, so the users don't have to
> call inc() followed by read(). It can be left out of the API.
> 
> The atomic_t usages in the kernel fall into the following categories:
> 
> 1. Stats (tolerance for accuracy determines whether they need to be
>    atomic or not). RFC version included non-atomic API for cases
>    when lossiness is acceptable. All these cases use/need just init
>    and inc. There are two variations in this case:
> 
>    a. No checks for wrapping. Use signed value.
>    b. No checks for wrapping, but return unsigned.
> 
> 2. Reference counters that release resource and rapping could result
>    in use-after-free type problems. There are two variations in this
>    case:
> 
>    a. Increments and decrements aren't bounded.
>    b. Increments and decrements are bounded.
> 
>    Currently tools that flag unsafe atomic_t usages that are candidates
>    for refcount_t conversions don't make a distinction between the two.
> 
>    The second case, since increments and decrements are bounded, it is
>    safe to continue to use it. At the moment there is no good way to
>    tell them apart other than looking at each of these cases.
> 
> 3. Reference counters that manage/control states. Wrapping is a problem
>    in this case, as it could lead to undefined behavior. These cases
>    don't use test and free, use inc/dec. At the moment there is no good
>    way to tell them apart other than looking at each of these cases.
>    This is addressed by REFCOUNT_SATURATED case.

Wrong! The atomic usage in mutex doesn't fall in any of those
categories.


The only thing you're all saying that makes sense is that unintentional
wrapping can have bad consequences, the rest is pure confusion.

Focus on the non-wrapping cases, _everything_ else is not going
anywhere.

So audit the kernel, find the cases that should not wrap, categorize and
create APIs for them that trap the wrapping. But don't go around
confusing things that don't need confusion.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
