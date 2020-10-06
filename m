Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E66CE28675B
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC7-0008K4-A2; Wed, 07 Oct 2020 18:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kPomI-0002MN-M8
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 15:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mmj7x7pJat8UNIIwIa7Sd+SRNOWKvcmn8r90tiL0s1A=; b=dJojJ4XerfqqERfUr1um5YKSum
 JrW89Opa48GrgWn+mfTObwLaN5GdSe1HGAfbbiGtGbnd4nb0YBJeO0jPSqvqkSMlZzwewjOKEiHx6
 dJTgceXDgaQm3odCStqmy/JXz29kk5QYSmfkrTKBFEE4labMwPf/ZXKZfNgd6Zb8X7DU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mmj7x7pJat8UNIIwIa7Sd+SRNOWKvcmn8r90tiL0s1A=; b=AXp+sgGLrQPCH+bnm4844pMWMb
 anBX3rC8pRV9C87DkfCCuLcz7JklqG8sagsdFbXZLLrJx5oht8/opN2jBTAjEP791/vGh5qnFF5CQ
 nJ2RUGYd7xxjnJNueCV6rJZeeB5VFvZ9y1yit3vOU4zKviN80mNIY4HxjjclubZR5Icg=;
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPomC-0016AF-U2
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 15:21:22 +0000
Received: by mail-il1-f193.google.com with SMTP id c5so10734219ilr.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Oct 2020 08:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mmj7x7pJat8UNIIwIa7Sd+SRNOWKvcmn8r90tiL0s1A=;
 b=IXQwwVAi7F6pRyGOUEQ8zaCzPCqLYGzR6fWH1AMiUEwCFiSYJ471FkLdAmCwbx2c54
 ItJ9whV/AqUo+mM2d7MbaozYvKfTm/b80nFjzDVrSdzgt+4L5TPDPIQZWJW4+sAYwEpy
 BbucuKw8YdnI1BxGGqAvEq5di/ZoXDjLG4oTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mmj7x7pJat8UNIIwIa7Sd+SRNOWKvcmn8r90tiL0s1A=;
 b=fWp+nnbijH30jMeyp2IeqBLelIlyOfo061XaKq8+3a0eWlBwPy6MmNB6DuV14izPBG
 1JQHy9iN8BkbC9LU2B3VuFzpjg3OGzlrjPKjzkIdEvatP049fGbSh/kyCLXBf6Vfb62E
 zp+ApcZuiT7CRLN19xhQI/lD2ER3pbDTcOVcW158clp+kK6ynX23MBZQ2yL0dat5TeB9
 4AJtT+nm32E6uqqq1EOX6S9e8LjuD/fri/JGoGhmWwFf2rLmNjfNBuLrS6ggLBGotl7G
 UDz5IQsi9P3DiG3kiNsu6eH/11wo1ROOvqgT8Wjf4B3RmMwPIV9DZjHgokGq3NlwI6se
 cA+Q==
X-Gm-Message-State: AOAM530s7kmYRWhPkwYTixYz1oJTB1QVLidLQN06CAY+LEdvCdXQyIAX
 x1e9R0Bh5Xumr6Z96A/CxAgYxA==
X-Google-Smtp-Source: ABdhPJyqEmZz43/2Pp1HykB1ZUp+7my5maxDOMBk3deo+zKUWBRwafPlIzkV/qrgjjh1lVhgQ7y1zw==
X-Received: by 2002:a92:b50b:: with SMTP id f11mr4049407ile.109.1601997664092; 
 Tue, 06 Oct 2020 08:21:04 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id z76sm349366ilf.76.2020.10.06.08.21.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Oct 2020 08:21:03 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009260923.9A2606CFF6@keescook>
 <3929a023-eb7a-509c-50e1-ee72dca05191@linuxfoundation.org>
 <202009281612.EDC1C0078@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <700f0ed4-fe09-7610-b460-89b5ad08452c@linuxfoundation.org>
Date: Tue, 6 Oct 2020 09:21:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009281612.EDC1C0078@keescook>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kPomC-0016AF-U2
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:24 +0000
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

On 9/28/20 5:13 PM, Kees Cook wrote:
> On Mon, Sep 28, 2020 at 04:41:47PM -0600, Shuah Khan wrote:
>> On 9/26/20 10:29 AM, Kees Cook wrote:
>>> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>>>>      7. Verified that the test module compiles in kunit env. and test
>>>>         module can be loaded to run the test.
>>>
>>> I meant write it using KUnit interfaces (e.g. KUNIT_EXPECT*(),
>>> kunit_test_suite(), etc):
>>> https://www.kernel.org/doc/html/latest/dev-tools/kunit/
>>>
>>> Though I see the docs are still not updated[1] to reflect the Kconfig
>>> (CONFIG_foo_KUNIT_TEST) and file naming conventions (foo_kunit.c).
>>>
>>
>> I would like to be able to run this test outside Kunit env., hence the
>> choice to go with a module and kselftest script. It makes it easier to
>> test as part of my workflow as opposed to doing a kunit and build and
>> running it that way.
> 
> It does -- you just load it normally like before and it prints out
> everything just fine. This is how I use the lib/test_user_copy.c and
> lib/test_overflow.c before/after their conversions.
> 

I am not seeing any kunit links to either of these tests. I find the
lib/test_overflow.c very hard to read.

I am going to stick with what I have for now and handle conversion
later.

I think it might be a good idea to add tests for atomic_t and refcount_t
APIS as well at some point.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
