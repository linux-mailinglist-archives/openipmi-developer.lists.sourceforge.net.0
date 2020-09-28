Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B81D286744
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-0008A5-G7; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kN2i2-0002Ax-II
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 23:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gaA/nbho2rHBM2XGAt+fqZDqrrCyGQoKDIGncDoowiY=; b=BdJUE01ZPNp8LGd5O4UyEe1K7M
 snFC8R0Yn4yEYO5qt+t1xrnI4PHxrjQWioTOTh+ye8zO8/Ds923cHFAc0VNOFS5V9TtejY1W38yI4
 W0hrWOO6wT1lFnpuV1rEWTEvqPx/wnqXdd3KEfH1MnXGnVCpDSr6/IGCIgpD3+JKQxa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gaA/nbho2rHBM2XGAt+fqZDqrrCyGQoKDIGncDoowiY=; b=XskT7uRLrHfIiPI/jn+3QE73m+
 9sX2aMeeab0qMxp56WFF8kBzTIiInTS5s/n7VLDfByjj6UPDElIt9jSBp2qgIKmGHyhc6XkIOqUbL
 oIi/zbW7AhXOhnl4gGHbrFJ13ItSDnlHINck3J+jRyguz4UN/JE2WPudFtYaYh+BO0fk=;
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kN2hn-00CBX1-CX
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 23:37:30 +0000
Received: by mail-il1-f195.google.com with SMTP id z5so3068201ilq.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Sep 2020 16:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gaA/nbho2rHBM2XGAt+fqZDqrrCyGQoKDIGncDoowiY=;
 b=WpOlbRfAI9e8II+dnFUMmLCr028LWtZq3VDo3e7fgu588x0zs7KTTS1rPIT60wbAGy
 cFwY0h5dO4zkUJdnxSGUKs+097/h1H6C3mMVF+vw66IPMyv0pyTPefuI3b/L1Te3OJTD
 5HSxT4otUXABTWMa/ya8prB3WhIkjEBLxYMM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gaA/nbho2rHBM2XGAt+fqZDqrrCyGQoKDIGncDoowiY=;
 b=Lhcr4aUc596HLRDet/EsQhIErkFIHC4Nh13tb1cEtaq1zEIuWxQW2kqVE49Vap0YOR
 c1LmuZ35jFfY2rivv1rlaWo8k9bVBg3cGPTcUhLfQ5kUhNV6gFJYah9eipnAJpdJkO6R
 ehO/fn2Kjen34bbLgZLx6Z8SZeRk+tc/dY/wH2gB2EvYLI21mTV1hxbBZji9ilN1N1jb
 +gW7jPlalI+D7PKhis0X8F8OzYbUifkWd8CNs2DkC4ganJ/+B1d4517Sq/Q8obGhdyn9
 Q8KZWeAHZns+ekQBFBoZ+i0/F+MzJqXyN1rozGXRfcSPszdmLvkhVOiGzT65MSe7j2qv
 CUSw==
X-Gm-Message-State: AOAM5301UawY9ClVeL5TcWt5sN4fQjUroEpPEB8jKOMNAhgipJUvOlia
 rUjGpEaVbhvy+gRmv6S7zDZNivvU+4jHqQ==
X-Google-Smtp-Source: ABdhPJy542a1CRGETx+C2//Kh61RETA39sKIv4QHpJwtOuYxcYdasZxM/JVddvpjSYaGDww7kJ0Sww==
X-Received: by 2002:a92:8452:: with SMTP id l79mr459458ild.222.1601332909461; 
 Mon, 28 Sep 2020 15:41:49 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id j1sm1334685ilq.74.2020.09.28.15.41.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 15:41:48 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009260923.9A2606CFF6@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <3929a023-eb7a-509c-50e1-ee72dca05191@linuxfoundation.org>
Date: Mon, 28 Sep 2020 16:41:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009260923.9A2606CFF6@keescook>
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.195 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kN2hn-00CBX1-CX
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

On 9/26/20 10:29 AM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>>     7. Verified that the test module compiles in kunit env. and test
>>        module can be loaded to run the test.
> 
> I meant write it using KUnit interfaces (e.g. KUNIT_EXPECT*(),
> kunit_test_suite(), etc):
> https://www.kernel.org/doc/html/latest/dev-tools/kunit/
> 
> Though I see the docs are still not updated[1] to reflect the Kconfig
> (CONFIG_foo_KUNIT_TEST) and file naming conventions (foo_kunit.c).
> 

I would like to be able to run this test outside Kunit env., hence the
choice to go with a module and kselftest script. It makes it easier to
test as part of my workflow as opposed to doing a kunit and build and
running it that way.

I don't mind adding TEST_COUNTERS to kunit default configs though.

thanks,
-- Shuah



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
