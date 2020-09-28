Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4E7286740
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-000891-7o; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kN216-0003Id-WB
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 22:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=; b=SWRw4wp1CUhLd7v9150eh2iqOW
 caP2Rt1LUkqXQHAkHMlSkC4qxCnVPHFtMqWKk2e73I3cVw1E1UtSHE/t33yyJyBAc8flGhuEOb+EJ
 EHkgFT6WnETik1sbay5gjHI9K8iHBE7b0zRPs5Nywnoc3UhCFWH3FI/41FxI4md1bfEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=; b=eZ4W25yIeZYRJ4lVzuYHTpV0li
 GlCkGONyhWfZEweuPvGQlYuz1T6AX9kelmGXMWJX7IOKnQoZlEcsyxNH83+S76ftBuYg8KdBIKWdi
 QEE0gMfntk3UGvYDUhrpNZuUSObv95BtRZxuTo1c0RIqPMoVIXPQ5x69nxIwlRWRBTTQ=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kN20n-009MiQ-Ad
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 22:53:08 +0000
Received: by mail-ot1-f66.google.com with SMTP id y5so2643661otg.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Sep 2020 15:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=;
 b=SE0OYfnZMo5uyZPc6mgIG21MkoqGNIbmK0jm0vy2aZv5VKA6ku7jwSWs6b1NGUoty/
 wn4UKOoXxTXy903PvYRPnkC+er2m5Wrf3iavraHJxa+QAxqpaiJN2b04VaT2qF2SzrVa
 Hk27i3iLwkmTdLboVB3hrjT8YMf/YNUT+GaDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=;
 b=gpsdAxL+BgkauImn8/7yi2bdIPebYu5AlNw9hH6dIsFXUw/BhIGJ/COBjz/BlBDOXv
 8f5b9/VWFiDPZWLihabnY3HcGsMcEJzU51Lp5cw1DlGV9mu+zFe8gVgoODrOtsuRrCnj
 LJQPyUbZp+N1e/v718Ja5y+I/2GV/WIoKnYStFBnDGLxcKFIKjQT3ZbldZjvA51Ett85
 LLJw4/r8/QovPjkjVA9ZskvXWCT5ceItF68NrEzAz+mAqmm1wXbYe4INzMjr/gE9qOto
 AZLTsRm+SIpirnNfv4ywFxeAoNNDbb3DxhMBcZGyzbBrDuYgW9Lt4IsL02V9EM/Camd6
 3uLw==
X-Gm-Message-State: AOAM5302keJxLxkTkfngeCS22dZaV9gt8NJb+HfCuZWvyNUV7NNuoedB
 apoLN75BTau321TKxDiCHFwDxw==
X-Google-Smtp-Source: ABdhPJxIHmX1phtewwAqu5CcHxH1zl2JXO7LDJyED8CkXQgctT2koxk9D4O4EqsfNA/ONHttUfK08A==
X-Received: by 2002:a05:6830:1e56:: with SMTP id
 e22mr785307otj.303.1601333563685; 
 Mon, 28 Sep 2020 15:52:43 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id g23sm2586552ooh.45.2020.09.28.15.52.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 15:52:43 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
 <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
 <202009260930.9252966D@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <31f28240-a3f1-e730-0b10-024125b1d2ab@linuxfoundation.org>
Date: Mon, 28 Sep 2020 16:52:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009260930.9252966D@keescook>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kN20n-009MiQ-Ad
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:22 +0000
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

On 9/26/20 10:33 AM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 06:13:37PM -0600, Shuah Khan wrote:
>> On 9/25/20 5:52 PM, Kees Cook wrote:
>>> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>>>> -- Addressed Kees's comments:
>>>>      1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>>>>         to clearly indicate size.
>>>>      2. Added warning for counter_simple* usage and it should be used only
>>>>         when there is no need for atomicity.
>>>>      3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>>>>      4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>>>>         atomic64_t ops and indicates size.
>>>>      5. Test updated for the API renames.
>>>>      6. Added helper functions for test results printing
>>>>      7. Verified that the test module compiles in kunit env. and test
>>>>         module can be loaded to run the test.
>>>
>>> Thanks for all of this!
>>>
>>>>      8. Updated Documentation to reflect the intent to make the API
>>>>         restricted so it can never be used to guard object lifetimes
>>>>         and state management. I left _return ops for now, inc_return
>>>>         is necessary for now as per the discussion we had on this topic.
>>>
>>> I still *really* do not want dec_return() to exist. That is asking for
>>> trouble. I'd prefer inc_return() not exist either, but I can live with
>>> it. ;)
>>>
>>

I didn't read this correctly the first time around.

>> Thanks. I am equally concerned about adding anything that can be used to
>> guard object lifetimes. So I will make sure this set won't expand and
>> plan to remove dec_return() if we don't find any usages.
> 
> I would like it much stronger than "if". dec_return() needs to be just
> dec() and read(). It will not be less efficient (since they're both
> inlines), but it _will_ create a case where the atomicity cannot be used
> for ref counting. My point is that anything that _requires_ dec_return()
> (or, frankly, inc_return()) is _not_ "just" a statistical counter. It
> may not be a refcounter, but it relies on the inc/dec atomicity for some
> reason beyond counting in once place and reporting it in another.
> 

I am not thinking about efficiency rather two calls instead of one if
an decrement needs to followed by return. In any case, I agree with you
that there is no need to add dec_return now without any use-cases.

I will update the patch series to remove it.

thanks,
-- Shuah







_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
