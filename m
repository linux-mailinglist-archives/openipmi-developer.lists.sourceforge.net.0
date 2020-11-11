Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A92AF5B7
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Nov 2020 17:03:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kcsb7-0003t3-Si; Wed, 11 Nov 2020 16:03:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kcsb2-0003sh-Gb
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 16:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t1jRZwSuuEQg/bscnGGcsBqPGqmw90tTjNeAiADGZWQ=; b=UpWG65zEYNvVn+zK+LHtj6QL2y
 lDZtC7epQNQQ2sUGSdC+ofNHcXtZaMU7LJNvng+jgTKrMe6KrLbJbvZxikzNqVXTzfD1uq7pS0O3L
 i59AAZl0MUfGSGx/DuU8u+0VqVsgo5rUw/4UfKGR0IHwXzkyDdsUKNtFn+tgfVWeWp3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t1jRZwSuuEQg/bscnGGcsBqPGqmw90tTjNeAiADGZWQ=; b=N9DhtiUU2cQ7cEXXTcCngBBo5E
 EbM48f4sjoMe9pYfJyrQptv1+x1xeD5Qb4DS1SRTMZKJPuBhzrWqKIv7BYpoUu/LU/ZfBL7rMIFkq
 BljmsmXSiYFiYfGBfxa6Tp4Uy+jhC3+JiA2pj0jgdoWSfQyTE0bJB6JLgwtc1I7VGXZ8=;
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kcsam-0085ND-OO
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 16:03:40 +0000
Received: by mail-il1-f195.google.com with SMTP id x20so2412812ilj.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 11 Nov 2020 08:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t1jRZwSuuEQg/bscnGGcsBqPGqmw90tTjNeAiADGZWQ=;
 b=J0hJSJOtZ8cKp8g+AeRYn4zxI0z474RogLJ5yTPblSThyhiNsosQswbzULN0LbKveR
 X0HAP1BB/hEjAalzEOtQYXHKBPj76Ny52sSHtoN3iZ+Hs8inttTe9EdPQNaO01FSCro6
 PYFW08h9SJjByeNV57EQfbTW7Znk7xIl6IRI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t1jRZwSuuEQg/bscnGGcsBqPGqmw90tTjNeAiADGZWQ=;
 b=i4JfqtJwc7ZKmyLs59ZI0V/+zmAUWvRXxfJk7Qg587NunXlYejHV9hTExBOB071jKe
 yyUWZholfNtSqFfRd8QnW1D77xEmVxIufJTR/tu/d5zWCx1gubGZn5CeKqCjr5xukaEN
 ew1xkkJ26AvHT3HoVFsGhCDSvf9NGKnXbyzKZLWHw3CdMVu/oSc5XBFFUsypelnfxK1P
 dI2WNjigR1STDebORfeToAg/CSSESlzz40VxIjck7sBSdhQitwQH5s4q41hQGyNnKwn0
 OpQsM6rKZ8j4yjbpswsaqhosNJZoqnJIN70618qLn1sH18i8Jexfu+G62mmHmV77BLZn
 ntEQ==
X-Gm-Message-State: AOAM531mYm+M2g7NuGi5OcLdItMFUvTn3MZUBkErPf0aLnAdXKNAFx9n
 zDzt7xnqmDBwmvjFrz4ff6j//w==
X-Google-Smtp-Source: ABdhPJzfuPKbLPy0S959f+cmN74uBmhaZrB/aTXCrRPM53UdGcZ4oGHwyut2AWmWt1ZgJZjUJccyXg==
X-Received: by 2002:a92:6c11:: with SMTP id h17mr12292757ilc.270.1605110603170; 
 Wed, 11 Nov 2020 08:03:23 -0800 (PST)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id x14sm1533054ior.7.2020.11.11.08.03.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:03:22 -0800 (PST)
To: Matthew Wilcox <willy@infradead.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
 <20201111043304.GS17076@casper.infradead.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <e84de5d0-f2b2-5481-eb8e-47370d632c4d@linuxfoundation.org>
Date: Wed, 11 Nov 2020 09:03:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201111043304.GS17076@casper.infradead.org>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kcsam-0085ND-OO
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
 minyard@acm.org, bp@alien8.de, skhan@linuxfoundation.org,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-edac@vger.kernel.org, tony.luck@intel.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, james.morse@arm.com,
 dmitry.kasatkin@gmail.com, linux-integrity@vger.kernel.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/10/20 9:33 PM, Matthew Wilcox wrote:
> On Tue, Nov 10, 2020 at 12:53:26PM -0700, Shuah Khan wrote:
>> There are a number of atomic_t usages in the kernel where atomic_t api
>> is used strictly for counting sequence numbers and other statistical
>> counters and not for managing object lifetime.
> 
> We already have something in Linux called a sequence counter, and it's
> different from this.  ID counter?  instance number?  monotonic_t?  stat_t?
> 

No results for monotonic_t or stat_t. Can you give me a pointer to what
your referring to.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
