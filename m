Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 214BA28673A
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC3-00086E-GO; Wed, 07 Oct 2020 18:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kLxqY-0003gE-Mb
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 00:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=; b=gAxFATZXr8km2EXjwGuQsTW2SN
 RvrRvvKshtVAlXKwZRs/BRqUT4cIPBqrIiSOn3Ngz6FhKYWXmEo3IGLT8miWYB7EszqD9hy+eZnUS
 Q00WWQC7WtZDr3JgW0O71huQfEvV4kVwvREnZPzVUEg13jSkq3nYW2ZARaNC110cASps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=; b=HoY90Yg1/JQIuE2CcgvPzPj0vn
 S+fcUwpdl+POh5PXwtwbdluJ1veL0SxjqeLDEZ7ehDtI4t26lYe8jxyBKJLB6nX18dOkPvGjIjW5J
 PmRFA5LP+mQa4qI4QAmddC2UHD6jUOGkvCq/YT8n97fFincXHZZemQ8fdeDly46DIC7E=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kLxqT-0069EQ-Q6
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 00:13:50 +0000
Received: by mail-ot1-f67.google.com with SMTP id 95so3928820ota.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 25 Sep 2020 17:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=;
 b=Itebs+wDAb4wpBvU4vPbCiLJnqG1udHed3DIfGnE4q+RUOWLMv3mGel8E4yijdBKEY
 I9B5MlW3NcLxPV4yZNs0MN9CUGtiqpVaXBemJ5vvVwM93NCjMqEEtaE3pMrenijGh90R
 nX3nRIJ5N6mKMl8WCK7FP09bwZBnRfzV9FTzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=;
 b=kF0hUcZnaHKn4Brk3gQjIJx5uIySUu5uhbCuJ0b23RYBL4aHpDzQ3waAuBOCXy1yPf
 GYhCLBwWeRjuTcUyJdUS7Xa8+N4GjFAeTNDIRGypVCtNE7P0t0wXUROJ1lDYc0qDWWgO
 Y/28FVcgHl5TgPKrWk2+3ol5+GUvsv1GQw4LliOTeuKX8/co26ru8pUj3h041MnrK8pg
 ROMcfqHyOz5Bv9P7bApR5NH9XM9hTHtP037LbdyH60cljKUfE/zOJNNug4wOgl5l3U8P
 SVcvZBPtDyj6Ug47kl1s4A48WsYZ6eOLG75OdiwL193LQHrOJxvSRroRPfLT5mIzRHEE
 I9cg==
X-Gm-Message-State: AOAM533Gz0zXfEKfpC519VJTVeK4i3jQZc9jjy3waB3pAPCp29T2MXOO
 lOVSD0hLWWQOZSVIugh+PAAs1w==
X-Google-Smtp-Source: ABdhPJy+UJfLmw1XfbHObY0B1wHdW9//e0AKIl4aAw2lTnknEdN9TO9NnMLa3wvcpjkRI2FBogyCmA==
X-Received: by 2002:a9d:6e1:: with SMTP id 88mr1876214otx.279.1601079219831;
 Fri, 25 Sep 2020 17:13:39 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id d63sm958205oig.53.2020.09.25.17.13.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 17:13:39 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
Date: Fri, 25 Sep 2020 18:13:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009251650.193E2AD@keescook>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kLxqT-0069EQ-Q6
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:21 +0000
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net,
 surenb@google.com, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
 lenb@kernel.org, tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 9/25/20 5:52 PM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>> -- Addressed Kees's comments:
>>     1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>>        to clearly indicate size.
>>     2. Added warning for counter_simple* usage and it should be used only
>>        when there is no need for atomicity.
>>     3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>>     4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>>        atomic64_t ops and indicates size.
>>     5. Test updated for the API renames.
>>     6. Added helper functions for test results printing
>>     7. Verified that the test module compiles in kunit env. and test
>>        module can be loaded to run the test.
> 
> Thanks for all of this!
> 
>>     8. Updated Documentation to reflect the intent to make the API
>>        restricted so it can never be used to guard object lifetimes
>>        and state management. I left _return ops for now, inc_return
>>        is necessary for now as per the discussion we had on this topic.
> 
> I still *really* do not want dec_return() to exist. That is asking for
> trouble. I'd prefer inc_return() not exist either, but I can live with
> it. ;)
> 

Thanks. I am equally concerned about adding anything that can be used to
guard object lifetimes. So I will make sure this set won't expand and
plan to remove dec_return() if we don't find any usages.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
