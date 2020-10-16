Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E7B290D85
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Oct 2020 23:57:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kTXin-0004DK-Pz; Fri, 16 Oct 2020 21:57:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kTXim-0004Cw-Pr
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Oct 2020 21:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jzoItDulSDSlUxDGRw3G8TEwpiIBVU/vuUm7RuAsW+4=; b=LIsDyycmuu+3RYPYDCInjI79f3
 3K4Ak/xNQMsu64OgkbSuFx7ViyZMLRdgn4cNIj7E4JW6+U3j2Ge6iyJcxcoRqmDUMT9Ra3B9X1mZ+
 D8pza/0De+33KEs51KNkmGLVXtvKW/VOtmfRZUnd3k/iHgaHEkHQ8E177hjh1b02gk1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jzoItDulSDSlUxDGRw3G8TEwpiIBVU/vuUm7RuAsW+4=; b=QsQ5v7P6KYLQfXWVLfovnPNkxq
 lvO80u3ONY9EZtFAVu5DGa90QBYzHiYmUZ1h+X2zI82aqhNcifigpHZ1mfgvRvPQscjIkezJnJBnI
 /b0sdYMwSXo3mGT8yL2mCzn+b2zGJl6h+ib2Y/IuKPNxK4kgkk6RzgH+Grz8cnp7TDJ8=;
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kTXie-000hcn-P2
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Oct 2020 21:57:08 +0000
Received: by mail-io1-f68.google.com with SMTP id q25so5780950ioh.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 16 Oct 2020 14:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jzoItDulSDSlUxDGRw3G8TEwpiIBVU/vuUm7RuAsW+4=;
 b=PYK3qHi0SlM4Ap5vtAD939+wmy/uc4NSYcNP6oAvg48Ng1dESdGw/FCNMGWrYwjM3E
 mPKznaL5D82PF8qF4kbmvDw+x0h/IdSxdhi1DPBMKFr8nijFAdwJDxTwvzpolrbvgX4k
 qmyYTqKA/kZk19UQGbDyLnBuVH5VapEnAriXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jzoItDulSDSlUxDGRw3G8TEwpiIBVU/vuUm7RuAsW+4=;
 b=dqhA7ZwnuA4x0ABxrsGSUJf3VlNTYFpVHoPl1INC4KItz2uXmWoF1GTI34GSJex4sw
 NPhQC/gIO0D7RLQnwU5oV7zIXXztEiFtF8K8IMiZ1Fbe4r5sxnjiZFbOPpSbU0IxF4Kr
 0wCj8TtdY7nASN/WTnuqRa3CfipGC6jbQ4a9PW6dGAWOD3kLAepet19EbAfe1DwKCNpW
 UQxfmWqJ5SMyDJXsrUprmfo2z8yCFgLbIULQ1PHieVMNtyaYEOSpluPb//PlHjQNcfmT
 oUbf5Nxg0MTi1OV4gP3zrNuLL3WhZ1MRPxh3zfuKU9f/riFmBsDoFmCC5J63SF0l2Kvl
 C3iw==
X-Gm-Message-State: AOAM531eozlvRbeRKmZgzAI0owATwsS3m/oezmdhdb6/4nVL+NWySz0Q
 nBTfGKlC1lypnKAttMNkb3czhA==
X-Google-Smtp-Source: ABdhPJw+AlOetLRaoHdMMYZCU1cMviaNyYmSoxw13tfB/W1yAkmwJK6fIb63qn4IMWo3+S+lpkcr6w==
X-Received: by 2002:a6b:4014:: with SMTP id k20mr4002080ioa.177.1602885415021; 
 Fri, 16 Oct 2020 14:56:55 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id d14sm3005594ilo.72.2020.10.16.14.56.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Oct 2020 14:56:54 -0700 (PDT)
To: Peter Zijlstra <peterz@infradead.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
 <202010141611.70B7A38@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <d09124e5-6eae-8515-5071-ac4d0dd669fe@linuxfoundation.org>
Date: Fri, 16 Oct 2020 15:56:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202010141611.70B7A38@keescook>
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kTXie-000hcn-P2
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
 bp@alien8.de, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/14/20 5:31 PM, Kees Cook wrote:
> On Wed, Oct 14, 2020 at 11:17:20AM +0200, Peter Zijlstra wrote:
>> On Tue, Oct 13, 2020 at 08:12:20PM -0600, Shuah Khan wrote:
>>
>>> They don't add any new behavior, As Kees mentioned they do give us a
>>> way to clearly differentiate atomic usages that can wrap.
>>
>> No it doesn't! atomic_t can wrap, this thing can wrap, no distinction.
>>
>> All it does is fragment the API and sow confusion. FOR NO BENEFIT.
> 
> I really don't see it this way. It's a distinct subset of the atomic_t
> API. The trouble that has existed here has been with an atomic_t being
> originally used NOT for lifetime management, that mutates into something
> like that because of the available API, but doing so without realizing
> it. atomic_t gets used for all kinds of algorithms, and the "counter"
> type is way too easily accidentally transformed into a "lifetime
> tracker" and we get bugs.
> 
> If we have a distinct type for wrapping-counters that limits the API,
> then it is much harder for folks to shoot themselves in the foot. I don't
> see why this is so bad: we end up with safer usage, more easily auditable
> code behavior ("how was this atomic_t instance _intended_ to be used?"),
> and no change in binary size.
> 
>>> There is no need to keep inc_return in this API as such. I included it
>>> so it can be used for above cases 1 and 2, so the users don't have to
>>> call inc() followed by read(). It can be left out of the API.
> 
> I go back and forth on this, but after looking at these instances,
> it makes sense to have inc_return(), for where counters are actually
> "serial numbers". An argument could be made[1], however, that such uses
> should not end up in the position of _reusing_ earlier identifiers, which
> means it's actually can't wrap. (And some cases just need u64 to make this
> happen[2] -- and in that specific case, don't even need to be atomic_t).
> 
> [1] https://lore.kernel.org/lkml/202010071334.8298F3FA7@keescook/
> [2] https://git.kernel.org/linus/d1e7fd6462ca9fc76650fbe6ca800e35b24267da
> 
>> Wrong! The atomic usage in mutex doesn't fall in any of those
>> categories.
> 
> But the atomic usage in mutex is *IN* mutex -- it's a separate data
> type, etc. We don't build mutexes manually, so why build counters
> manually?
> 
>> The only thing you're all saying that makes sense is that unintentional
>> wrapping can have bad consequences, the rest is pure confusion.
>>
>> Focus on the non-wrapping cases, _everything_ else is not going
>> anywhere.
> 
> I view this as a way to do so: this subset of wrapping cases is being
> identified and removed from the pool of all the atomic_t cases so that
> they will have been classified, and we can continue to narrow down all
> the atomic_t uses to find any potentially mis-used non-wrapping cases.
> 
> The other option is adding some kind of attribute to the declarations
> (which gets us the annotation) but doesn't provide a limit to the API.
> (e.g. no counter should ever call dec_return).
> 

Not sure about that. We have more than dec_return to deal with. More on
this below.

>> So audit the kernel, find the cases that should not wrap, categorize and
>> create APIs for them that trap the wrapping. But don't go around
>> confusing things that don't need confusion.
> 
> That's what's happening here. But as it turns out, it's easier to do
> this by employing both the process of elimination (mark the counters)
> and direct identification (mark the refcount_t). Then the pool of
> "unannotated" atomic_t instances continues to shrink.
> 

Right auditing is what is happening now.

Let me summarize the discussion:

atomic_t api provides a wide range of atomic operations as a base
api to implement atomic counters, bitops, spinlock interfaces.
The usages also evolved into being used for resource lifetimes and
state management. Then came refcount_t api to address resource lifetime
problems related to atomic_t wrapping.

There is a large overlap between the atomic_t api used for resource
lifetimes and just counters. Not all counters used for resource
lifetimes can be converted to refcount_t.

A few quick "git grep" numbers on atomic_t interfaces usage:

Common for all:

atomic_set() - 3418
atomic_read() - 5833
atomic_inc() - 3376
atomic_dec() - 2498
atomic_inc_return() - 612

Counters don't need these:

atomic_dec_return() - 295
atomic_add_return() - 209
atomic_sub_return() - 144
atomic_add() - 744
atomic_sub() - 371
atomic_dec_and_test() - 552

You can see from these numbers, the volume of common usages that make
it difficult to separate out counters vs. non-counter usages.

The problem we are now running into is, it is becoming difficult
weed out candidates for refcount_t conversion in this noise.

Isolating a smaller subset of arithmetic atomic ops to address this
specific counters use-case will help reduce noise. This way we can
go through this work once and convert all counters to use this narrow
scoped api and what is left is non-counter usages.

The current situation is more confusing and adding a narrowly focused
api for counters reduces it and makes it easier.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
