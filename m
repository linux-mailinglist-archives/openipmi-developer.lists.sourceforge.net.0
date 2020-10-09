Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0F72899F5
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 22:46:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQzH5-0004CB-Ra; Fri, 09 Oct 2020 20:45:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kQzH4-0004C4-WE
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 20:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=; b=GSN1AEm3uFJsfiXIM1DWHyRhZQ
 ZYY6SlBOShPhAXOlZmUc3lQFnJrTyz8dYTa5wmbBFOJjzC9IhD56Xqdd22Pg4Nw1XpUvBKHURTsGq
 368OF4fkgn/6lRHFi1zPuWP5pWbqzoThuz9LWUW4KQSSxSZa3Od2Us6zBjhgYobK5pH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=; b=Nu9VX5srw+HOeJbAWVUO7KMV8F
 faqdd1L0ppAVvR4qmrcPfhY++ylNFIFNGXbM7gY9WWbrqUuXLhHSiFQOhyw1SGyus/UHWO1KCDzys
 RrodqZMPD7DcQRfWAS+M86gtnh/s39LXfl1BhBVjap7wlU1OnjFxH4nLUfqZLCx7b8aU=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQzGx-008v9k-Cw
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 20:45:58 +0000
Received: by mail-pg1-f194.google.com with SMTP id g29so8189362pgl.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 13:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=;
 b=VXDV+aZd/7WAFMj+s91i6dzU5o9niIOJr9LtvzDbExqBX92/o43XJ4mLdkWsssdUYW
 59/mf+Vx9HTFuB+s5Uq+SPPb/V+sG7AmiVA9XX0Je/8LgHrwTkCyhv3fT9fvBKLsQUI1
 kv3u9MueBXwLYe6awXe3LxmAvsJGNqzekmkq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hVX5+FfHI4ZUM/n+lt7+FKmZQZljIf9JA1OHbdRm9dM=;
 b=nQxidkJcaqWz1veq2hLmDAl9Ep2HxYknd204ulHBBi5A6gvUK/j9xLKGzzCPxX6LYd
 4lcRQT+IXCpjj8Y6+exQmTSRVQh10sU0PQlegIIP0oRp5BnZ316qfLN8zMR7GeyyeKKF
 kNMkeeQLdLy2Y6BrFRMY60Chhk5YSQSbgjndVYQ2SHnOp4sigEXkPJe+V/wUbHqpn3fz
 LMx6Ulg4FppxCbIlIr5Zi2wpG/mrfSKxRG7QfmW9AIEg/d/kCl3YIF1Qv1Dv5srSfqHM
 MfVnUBD/l6UtwROr+BhP2T5mWBXa21hd0KtPXMR1IkdnD93nllhSr9pSyZ53NEkNN6vw
 eqDg==
X-Gm-Message-State: AOAM531Pcqi43DNVm6CSpzYujyCvoh2fADvwpsLWSCfsbguV8V4MurhL
 tA4GM+jy3+VIlyp9ZlxGWQPqSw==
X-Google-Smtp-Source: ABdhPJzSAKjeywiz0Od20lW+Cape3t34gBitYgmyJAvlFQsFShOemku3ICOQ9rzytzKY66XYHOnlUw==
X-Received: by 2002:a17:90a:1548:: with SMTP id
 y8mr6533282pja.113.1602276345630; 
 Fri, 09 Oct 2020 13:45:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j25sm11474436pfn.212.2020.10.09.13.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 13:45:44 -0700 (PDT)
Date: Fri, 9 Oct 2020 13:45:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202010091255.246395A6@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQzGx-008v9k-Cw
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

On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
> On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> > Simple atomic counters api provides interfaces for simple atomic counters
> > that just count, and don't guard resource lifetimes. The interfaces are
> > built on top of atomic_t api, providing a smaller subset of atomic_t
> > interfaces necessary to support simple counters.
> 
> To what actual purpose?!? AFACIT its pointless wrappery, it gets us
> nothing.

It's not pointless. There is value is separating types for behavioral
constraint to avoid flaws. atomic_t provides a native operation. We gained
refcount_t for the "must not wrap" type, and this gets us the other side
of that behavioral type, which is "wrapping is expected". Separating the
atomic_t uses allows for a clearer path to being able to reason about
code flow, whether it be a human or a static analyzer.

The counter wrappers add nothing to the image size, and only serve to
confine the API to one that cannot be used for lifetime management.

Once conversions are done, we have a clean line between refcounting
and statistical atomics, which means we have a much lower chance of
introducing new flaws (and maybe we'll fix flaws during the conversion,
which we've certainly seen before when doing this stricter type/language
changes).

I don't see why this is an objectionable goal.

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
