Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFA928D859
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Oct 2020 04:12:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kSWHK-00031F-MF; Wed, 14 Oct 2020 02:12:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kSWHI-00030y-Sy
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 02:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=; b=kIk5y3spSu3XzPWtk0ajNCM5dp
 vXdrIJafEldPeVRGh+JEicINqwjkggu1pITkRT/QcAIc/gV1DNZzsaVYp/jekAzoUAj2lJIaOfe0V
 sS8gZcxCji6Qk2dexyx2YLgnzvJPSrVPQ8W708iesTO9+AUGucc9Ncb+tEUzU8PJ59r8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=; b=EGjSY0bDp279rDvhOP7SARinKZ
 M97RlVGzIuafDNX+OQST+W9dglwfBZFLai8A6tmuOZwJ8SLLdza0M+cc4AM0K/aWuYtlHxtgeyPbv
 LsWLRaTjrC8lI+gsMcrQ8gVfHjkb2WUffG0pC4/ZxpUPMnY2ZG6dD8hUV6FFN0HKHhkQ=;
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kSWHE-009LLC-Ih
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 02:12:32 +0000
Received: by mail-il1-f196.google.com with SMTP id t12so3458347ilh.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Oct 2020 19:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=;
 b=DbWW5TtsBc6Dyb8YsskACaBaCbQEtISHSCVxTRgFAHlHJjmD1dU40N2/h5pZJ6i9bJ
 +F2NBNfzuZOj7AsXvJYavEYGwGPq4uL8mop/7Jirc9xAaKdAITSdhsoI+JolGBgvo7jC
 FaHWhFiSslkjQ7vjKYWsBMu2t4YFei5779oSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=;
 b=nyd3o+G7et8fEV/WTMATWNMbkING4uftJY9WMNh5Wf2SqJkv0EZCTicFe1HxgC7KE5
 ZFGP6IKXhaYyr99K9V3jsY1PnB1EHlpQp9BIaDyuVQ0sYJpTDGMeOsmjB1Nwo3nzN9ba
 MmHUgKOenFOPGMJLSKjhvRW/zgw+U/0KXbSVItYXznnOGGi/8ksaMyfHKr/imkT9vUkE
 FFBzCrRHRHsg0Phbj4Gas2wU+QoozBdRj+HMp1XigFE1t5hu0jW/nNHgNygLXR0fk0p1
 PdZUZisiWRKfWxZMskTYiT7amAroeE6wtguOPJrkuPkq11kX9TkeGEF0zLotyD4p8YFS
 vFkA==
X-Gm-Message-State: AOAM530tkLANjeWxyrbv4xzIwRsijJ6+Efyf6hWjXmp9tANcYf5eITnc
 EBrYrH9YBeIHxC1gffNtt58InQ==
X-Google-Smtp-Source: ABdhPJzg8Uk3iABEzJ4woM5C8q7wCnJ5fWvm66m83Hyk77SwQ9t1b/UHHFa4UxnY/E8z7l/WVw75Zg==
X-Received: by 2002:a92:bb0d:: with SMTP id w13mr2338778ili.168.1602641542819; 
 Tue, 13 Oct 2020 19:12:22 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id 15sm1611292ilz.66.2020.10.13.19.12.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Oct 2020 19:12:22 -0700 (PDT)
To: Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
Date: Tue, 13 Oct 2020 20:12:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kSWHE-009LLC-Ih
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/10/20 5:09 AM, Peter Zijlstra wrote:
> On Fri, Oct 09, 2020 at 01:45:43PM -0700, Kees Cook wrote:
>> On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
>>> On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
>>>> Simple atomic counters api provides interfaces for simple atomic counters
>>>> that just count, and don't guard resource lifetimes. The interfaces are
>>>> built on top of atomic_t api, providing a smaller subset of atomic_t
>>>> interfaces necessary to support simple counters.
>>>
>>> To what actual purpose?!? AFACIT its pointless wrappery, it gets us
>>> nothing.
>>
>> It's not pointless. There is value is separating types for behavioral
>> constraint to avoid flaws. atomic_t provides a native operation. We gained
>> refcount_t for the "must not wrap" type, and this gets us the other side
>> of that behavioral type, which is "wrapping is expected". Separating the
>> atomic_t uses allows for a clearer path to being able to reason about
>> code flow, whether it be a human or a static analyzer.
> 
> refcount_t got us actual rutime exceptions that atomic_t doesn't. This
> propsal gets us nothing.
> 
> atomic_t is very much expected to wrap.
> 
>> The counter wrappers add nothing to the image size, and only serve to
>> confine the API to one that cannot be used for lifetime management.
> 
> It doesn't add anything period. It doesn't get us new behaviour, it
> splits a 'can wrap' use-case from a 'can wrap' type. That's sodding
> pointless.
> 

They don't add any new behavior, As Kees mentioned they do give us a
way to clearly differentiate atomic usages that can wrap.

Let's discuss the problem at hand before dismissing it as pointless.

> Worse, it mixes 2 unrelated cases into one type, which just makes a
> mockery of things (all the inc_return users are not statistics, some
> might even mis-behave if they wrap).
> 

You are right that all inc_return usages aren't statistics. There are
3 distinct usages:

1. Stats
2. Cases where wrapping is fine
3. Cases where wrapping could be a problem. In which case, this API
    shouldn't be used.

There is no need to keep inc_return in this API as such. I included it
so it can be used for above cases 1 and 2, so the users don't have to
call inc() followed by read(). It can be left out of the API.

The atomic_t usages in the kernel fall into the following categories:

1. Stats (tolerance for accuracy determines whether they need to be
    atomic or not). RFC version included non-atomic API for cases
    when lossiness is acceptable. All these cases use/need just init
    and inc. There are two variations in this case:

    a. No checks for wrapping. Use signed value.
    b. No checks for wrapping, but return unsigned.

2. Reference counters that release resource and rapping could result
    in use-after-free type problems. There are two variations in this
    case:

    a. Increments and decrements aren't bounded.
    b. Increments and decrements are bounded.

    Currently tools that flag unsafe atomic_t usages that are candidates
    for refcount_t conversions don't make a distinction between the two.

    The second case, since increments and decrements are bounded, it is
    safe to continue to use it. At the moment there is no good way to
    tell them apart other than looking at each of these cases.

3. Reference counters that manage/control states. Wrapping is a problem
    in this case, as it could lead to undefined behavior. These cases
    don't use test and free, use inc/dec. At the moment there is no good
    way to tell them apart other than looking at each of these cases.
    This is addressed by REFCOUNT_SATURATED case.

This API addresses 1a. Stats. No checks for wrapping. Use signed value
at the moment with plan to add support for unsigned for cases where
unsigned is being used.

It is possible to cover 2b in this API, so it becomes easier to make a
clear distinction the two cases and we can focus on only the atomic_t
cases that need to converted to refcount_t. This is easy to do by
allowing max. threshold for the variable and checking against that
and not letting it go above it.

There are several atomic_t usages that use just:

-- init or set and inc
-- init or set and inc/dec (including the ones that manage state)
-- Increments and decrements are bounded

Creating a sub-set of atomic_t api would help us with differentiate
these cases and make it easy for us identify and fix cases where
refcount_t should be used.

Would you be open to considering a subset if it addresses 2b and
unsigned returns for stats?

thanks,
-- Shuah














_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
