Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 503032AE384
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Nov 2020 23:42:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kccLS-0008LZ-O0; Tue, 10 Nov 2020 22:42:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kccLS-0008LR-4f
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 22:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7jSf/XzZ4jyQ+1vMaLtMgIwZ1Hd3aE57H+YNIg7Vd6s=; b=Mi+80kZ2TzXGqT3xrpUE7J4fRC
 2mPKs0qMvMn5oIrUijPe3DcfQ627nlM8uljP3rLrmUVQBi2vruTCWlDp9NEsjcXVem5J1pd4oPyM0
 VjvpiguZoJWXXCC8eE3xSxyQ5mhNzuFqKMPqpPn2XBTed3xvL7diJA+GgKko8tqdViKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7jSf/XzZ4jyQ+1vMaLtMgIwZ1Hd3aE57H+YNIg7Vd6s=; b=j4FpF72ZuVjLZK5LB7nJl4AWx8
 d5OA967tefymAW5IBGeYra7PO73r48bDWOjiEIjf5nryvh8Qm44iQJGcthaQSfzn0pNeH4h3uIqEG
 rV3DkyLcDLx2qIDV3XjNKZcwImIFjDgfQpPD6ZuEy1hWZ0r4g+VAoXGrbE8I3cUgG7ug=;
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kccLK-007FMG-Pu
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 22:42:34 +0000
Received: by mail-il1-f195.google.com with SMTP id p10so147402ile.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Nov 2020 14:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7jSf/XzZ4jyQ+1vMaLtMgIwZ1Hd3aE57H+YNIg7Vd6s=;
 b=HmAOZ27e8pHLOZtNt33kCndwJB139JyHCZFOiD/C94/+pWb2KGdTlQCvLFR1HyR9mk
 lFx1ytT/rJSJ7/tpMYshlVQIWUN/TZct4TCzlg9wYsDyPKswhZWrEi9oFiHeYSi0CMuE
 tmbYZnr4Jy0AgOqG0pqnPBmt6xrLd9kKaYRBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7jSf/XzZ4jyQ+1vMaLtMgIwZ1Hd3aE57H+YNIg7Vd6s=;
 b=EnPiV29E4p91G2S0cP/WztGaxys/eG6z9OSpBKXem3n3HsEkgyjAMDEC53D8CH5PEj
 12uwr5Kho6ZXNNbufuHQU60ag2A3dXbhMELXKUhUqWUjayuIdJsUSwi9v1Apbbfzah8D
 DRXELg45B3bDqZXRIuwNE8TZXX+W4LTs0vZOXigDFbj30uEf4WPzM37kUsE5ANHvaQPh
 LwFa/moBiH4wxHY7CCKZs6N1CKhfHMEpfq4rYIPaThFdG05Fwje9hqMJfFjug/lXA75k
 +7bb8CGO4Zeuch7E2b0Cr5zhp7yqT7tnepvW2K/ypfZ3XcwzBJufWZucLGWoaLSUT1He
 szEg==
X-Gm-Message-State: AOAM532sJifKAMGJbixxqNjjHfP+uLEd695vTcy1oixeIBunN/Dr/mHS
 Slrk8QA/HkiwGLkryFV1YWjQPw==
X-Google-Smtp-Source: ABdhPJy+/m7HgoPinpwrhFYoHGR3jeRThmYkrgj1Js7jS1hKjj3aF+EFXbp2kYFpSB7gnDlz1TZdJg==
X-Received: by 2002:a92:99ce:: with SMTP id t75mr16441201ilk.257.1605048133972; 
 Tue, 10 Nov 2020 14:42:13 -0800 (PST)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id e12sm38652ilq.65.2020.11.10.14.42.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 14:42:13 -0800 (PST)
To: Alan Stern <stern@rowland.harvard.edu>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
 <20201110204414.GA204624@rowland.harvard.edu>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <c58fde16-4bd1-0e1e-94ce-a15c359f9f91@linuxfoundation.org>
Date: Tue, 10 Nov 2020 15:42:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201110204414.GA204624@rowland.harvard.edu>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kccLK-007FMG-Pu
Subject: Re: [Openipmi-developer] [PATCH 00/13] Introduce seqnum_ops
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
Cc: rafael@kernel.org, peterz@infradead.org, valentina.manea.m@gmail.com,
 zohar@linux.ibm.com, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 arnd@arndb.de, corbet@lwn.net, linux-doc@vger.kernel.org, jmorris@namei.org,
 linux-acpi@vger.kernel.org, serge@hallyn.com, keescook@chromium.org,
 minyard@acm.org, bp@alien8.de, openipmi-developer@lists.sourceforge.net,
 mchehab@kernel.org, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, dmitry.kasatkin@gmail.com,
 linux-integrity@vger.kernel.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/10/20 1:44 PM, Alan Stern wrote:
> On Tue, Nov 10, 2020 at 12:53:26PM -0700, Shuah Khan wrote:
>> There are a number of atomic_t usages in the kernel where atomic_t api
>> is used strictly for counting sequence numbers and other statistical
>> counters and not for managing object lifetime.
>>
>> The purpose of these Sequence Number Ops is to clearly differentiate
>> atomic_t counter usages from atomic_t usages that guard object lifetimes,
>> hence prone to overflow and underflow errors.
>>
>> The atomic_t api provides a wide range of atomic operations as a base
>> api to implement atomic counters, bitops, spinlock interfaces. The usages
>> also evolved into being used for resource lifetimes and state management.
>> The refcount_t api was introduced to address resource lifetime problems
>> related to atomic_t wrapping. There is a large overlap between the
>> atomic_t api used for resource lifetimes and just counters, stats, and
>> sequence numbers. It has become difficult to differentiate between the
>> atomic_t usages that should be converted to refcount_t and the ones that
>> can be left alone. Introducing seqnum_ops to wrap the usages that are
>> stats, counters, sequence numbers makes it easier for tools that scan
>> for underflow and overflow on atomic_t usages to detect overflow and
>> underflows to scan just the cases that are prone to errors.
>>
>> Sequence Number api provides interfaces for simple atomic_t counter usages
>> that just count, and don't guard resource lifetimes. The seqnum_ops are
>> built on top of atomic_t api, providing a smaller subset of atomic_t
>> interfaces necessary to support atomic_t usages as simple counters.
>> This api has init/set/inc/dec/read and doesn't support any other atomic_t
>> ops with the intent to restrict the use of these interfaces as simple
>> counting usages.
>>
>> Sequence Numbers wrap around to INT_MIN when it overflows and should not
>> be used to guard resource lifetimes, device usage and open counts that
>> control state changes, and pm states. Overflowing to INT_MIN is consistent
>> with the atomic_t api, which it is built on top of.
> 
> If Sequence Numbers are subject to wraparound then they aren't reliable.
> Given that they aren't reliable, why use atomic instructions at all?
> Why not just use plain regular integers with READ_ONCE and WRITE_ONCE?
> 

You still need atomic update for these numbers. The intent is to provide
atomic api for cases where the variable doesn't guard lifetimes and yet
needs atomic instructions.

Several such usages where atomic_t is used for up counting, also use
upper bounds. It is also an option to switch to seqnum64 to avoid
wrap around in case there is a concern.

thanks,
-- Shuah




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
