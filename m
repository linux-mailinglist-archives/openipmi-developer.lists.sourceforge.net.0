Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 302D428673B
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC3-00086b-Il; Wed, 07 Oct 2020 18:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kLzb3-0002yb-8I
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 02:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIEdKDvK2ICWtBjC/bRIDnXPDwo+7XOBDbqUgm7tYTY=; b=Kme7L5YuTLKhTkuJzYTpTn4Gxu
 f2p4/TMtvgodMmXlc1nKnSEVyvWRhjg/DfablTxv78mPU3QrjdaF383rtWXke5TJyolS7vlMZxIb/
 cpOkr5QzjOcSbc4KqLqvLKM22W2MWtl0otVbt6r7xIZB5d0Nc/T+aDD7ANeZbXvoMgM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xIEdKDvK2ICWtBjC/bRIDnXPDwo+7XOBDbqUgm7tYTY=; b=b4o9VHVhoH+ewrXbD5Gwt9xzjR
 UeOioJO+rxC9RxROCELMJ1I7p+30Ip02iUC51EKsZyQe6MCzB8Q77ppcxNYgtinpQ3FRIAemsiWCp
 6vmvoi90PjPHa4+JOQZfEKVhpyMgpMHg136DCjqb3gKU0XZHujC+J3Ox0pv9Nt5bOHa0=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kLzat-008b32-B8
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 02:05:57 +0000
Received: by mail-ot1-f65.google.com with SMTP id o8so4148012otl.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 25 Sep 2020 19:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xIEdKDvK2ICWtBjC/bRIDnXPDwo+7XOBDbqUgm7tYTY=;
 b=X1PDz8tuQOT0hPqGqNcnIuHD1DhEyv0Ke0Wlf/nczWWIjjwYzNht7vp5fbbRYDA7rG
 UR92zl9xKS6OWDvi+qoEcimQRN6VKOKy0OAKm5xEtobaTRcotolt0xes3QYbi+b76utu
 +z79pYdLpx0loFohQfeB1oQ/PCU2JRmRZ5cPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xIEdKDvK2ICWtBjC/bRIDnXPDwo+7XOBDbqUgm7tYTY=;
 b=iaQ2DQ6v/yrlMTdFwT+tOvLwTxMXn2ZSeWzVQbT4e4JacbUukFDm+QIHi1JSY0UNRm
 vny4ZCkGOK2XACgXZ8843PI7ngotTGpBgCASW/mIEs+694j/dOULRYuv1iuotuUAgtqv
 hO+g6iOiNqXGY+i/a9w6hUJD2xfgp+5bITUGkOvNkIGd8aKgdteTJ7clubo7X0TYdrtO
 82aYSmravNFbDetE2lktBy3rbAqbsNeYhyN3xP4iJ5rk8GSUikf9iqcBJFzZqSLyM5JU
 rUTZyi+2pLQCuBJDweEXnlZhncNdCYbBMEJ/qwqueJ1vXgH/7wd4xRtrVl4ZKOqaslcD
 zxEQ==
X-Gm-Message-State: AOAM531BrinwK3gD6icKZwivEG+McjQawnmmMSvV+f17+JmF0nBJXZ9T
 njSawGAatHbTAvz0cGOOoCS3ig==
X-Google-Smtp-Source: ABdhPJzPedgFR9s1+TVpNOnx5pm0cwxYtxWwsXuoOBDCeeLYuFwbO9CpkIl+2SmipWnC3S6jZzHW+w==
X-Received: by 2002:a05:6830:1f09:: with SMTP id
 u9mr2057198otg.175.1601085941760; 
 Fri, 25 Sep 2020 19:05:41 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id j18sm1112946otr.12.2020.09.25.19.05.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 19:05:40 -0700 (PDT)
To: minyard@acm.org
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <b742c2637a8b6083c471a6dd829db70071909f83.1601073127.git.skhan@linuxfoundation.org>
 <20200926001510.GH3674@minyard.net>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <dc07811e-d8e9-f9dd-bc6a-1877d7f06344@linuxfoundation.org>
Date: Fri, 25 Sep 2020 20:05:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200926001510.GH3674@minyard.net>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kLzat-008b32-B8
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:22 +0000
Subject: Re: [Openipmi-developer] [PATCH 09/11] drivers/char/ipmi: convert
 stats to use counter_atomic32
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
Cc: keescook@chromium.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 9/25/20 6:15 PM, Corey Minyard wrote:
> On Fri, Sep 25, 2020 at 05:47:23PM -0600, Shuah Khan wrote:
>> counter_atomic* is introduced to be used when a variable is used as
>> a simple counter and doesn't guard object lifetimes. This clearly
>> differentiates atomic_t usages that guard object lifetimes.
>>
>> counter_atomic* variables will wrap around to 0 when it overflows and
>> should not be used to guard resource lifetimes, device usage and
>> open counts that control state changes, and pm states.
>>
>> atomic_t variables used for stats are atomic counters. Overflow will
>> wrap around and reset the stats and no change with the conversion.
>>
>> Convert them to use counter_atomic32.
>>
>> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> 
> Reviewed-by: Corey Minyard <cminyard@mvista.com>
> 

Thanks Corey.

> I assume for this conversion that the plan is to eliminate atomic_t
> completely and convert all atomic counters used for object lifetime to
> struct kref?  The new naming is certainly more clear and I'm happy with
> this change.
> 

No plans to replace or get rid of atomic_t/refcount_t ops. The reason is
to clearly differentiate atomic_t uses that don't guard object lifetimes
or state management, hence prone to overflow and underflow errors.

By clearly differentiating the ones guard the lifetimes and that don't
using this new counter interface, the existing tools that scan for
overflow/underflow conditions can filter out Counters API and look for
the variables that truly guard the lifetimes. Currently it is becoming
very hard to zero in on the errors with the noise.

Second reason is, atomic_t is overused. Non-atomic counters in this
API can be used for stats/counters that don't need atomocity.

Hope this helps.

thanks,
-- Shuah



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
