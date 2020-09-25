Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C77279531
	for <lists+openipmi-developer@lfdr.de>; Sat, 26 Sep 2020 01:53:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kLxWO-0002ub-Mf; Fri, 25 Sep 2020 23:53:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kLxWN-0002uU-VZ
 for openipmi-developer@lists.sourceforge.net; Fri, 25 Sep 2020 23:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iFWj9rVZ5vm/4L3J5z1Tcx/sVqL/m9WSz6V0j4oHet4=; b=NSjG7YEGS+R1yCfPTr4c53V/BA
 ItiwOjHY5XU2Gq/u4ixhwX/+1xj97Q2N9uZMJ5nZLFc+zvRxmQApFZIkh4aC/wQ6ucVMpqrTiHSYq
 kv2YUMT1nwo3p3C4c6F9nGRNbMN/VuJGX5qpVgZyA9NUbaCcftZafoOF6IwSzT4D5XoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iFWj9rVZ5vm/4L3J5z1Tcx/sVqL/m9WSz6V0j4oHet4=; b=ko+fLLCb0vLoTT3I8NB+Yw2hAn
 x6Wl59zTm8z1rUER/4cEVahVEA+KbQpS9VkoyDu5AT9iRErcsojxta5JJC1OB1OKAoFHTvDHWfVdR
 Hnz2S3nMnJBtiTTmYUMT7S3mjI4kRUalyLWkjm1cyo2l2y4gA8z2UHRCjkVjMwxSMXrY=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kLxWI-008UqN-Ii
 for openipmi-developer@lists.sourceforge.net; Fri, 25 Sep 2020 23:52:59 +0000
Received: by mail-pj1-f68.google.com with SMTP id u3so280874pjr.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 25 Sep 2020 16:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iFWj9rVZ5vm/4L3J5z1Tcx/sVqL/m9WSz6V0j4oHet4=;
 b=ZwESCWVlTO74iymvTUF8tSSMe7Du8J1LymeFeyKgcF5Q1zBF53EVpQ5hr4PUMZrcLn
 2MTLa2gMszA1aZyegsggpOof20L3i0ywKgrCqCg//Qd3p1zH0JzhVYh2t633VyopI2VY
 u5Cmsfyzhhm/KZCqxkc+pm0llJHjFWXiH8tjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iFWj9rVZ5vm/4L3J5z1Tcx/sVqL/m9WSz6V0j4oHet4=;
 b=jHRDxSXcCj1Jl2hW7qMaBZtjjWzzMuGj0eg0iwi3Q/4n21OOvELQa3sVzwKdq8dt3a
 M+wcdQIRbLEJPuKUui8V6GcsYt+6OjCayCtacTamZrP7wSH7vtrbO6kwf5fUiBUxPfC/
 jTS/m0861NJSDVa3+M6b6xFqSs5jxXzOurwq597mWHdzaWU250O2XMgmrjt+9wgOMBtK
 jeXJs/eehIPhZSV1AQLAxWWhx6fS3SiLSULUzpBxAA9S6lA9WPjZEctt10GYgmW6QJGl
 M3KQEvIjdFEyWnnMRLosUT4ourtt92HObJ+3trevIFmrtnlKoVSmkgehk8LpRZFUHSPW
 E5mQ==
X-Gm-Message-State: AOAM533jds3XAx1n3SmYV4WDDpKOiPSTeKTheYXL8D1U1J6nzonW56fH
 HLIFXLfMw9GftAt55OH5RI+KEQ==
X-Google-Smtp-Source: ABdhPJw0lmuwQ6bMq1NtGi1jhsCls+JQb9RaDs1Q7b5BS6raVGknvlA16kdtk/o2XDocG2Uwm2fbpg==
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr22833pjb.101.1601077961848; 
 Fri, 25 Sep 2020 16:52:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n28sm3164670pgb.51.2020.09.25.16.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 16:52:41 -0700 (PDT)
Date: Fri, 25 Sep 2020 16:52:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <202009251650.193E2AD@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1601073127.git.skhan@linuxfoundation.org>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kLxWI-008UqN-Ii
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
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> -- Addressed Kees's comments:
>    1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>       to clearly indicate size.
>    2. Added warning for counter_simple* usage and it should be used only
>       when there is no need for atomicity.
>    3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>    4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>       atomic64_t ops and indicates size.
>    5. Test updated for the API renames.
>    6. Added helper functions for test results printing
>    7. Verified that the test module compiles in kunit env. and test
>       module can be loaded to run the test.

Thanks for all of this!

>    8. Updated Documentation to reflect the intent to make the API
>       restricted so it can never be used to guard object lifetimes
>       and state management. I left _return ops for now, inc_return
>       is necessary for now as per the discussion we had on this topic.

I still *really* do not want dec_return() to exist. That is asking for
trouble. I'd prefer inc_return() not exist either, but I can live with
it. ;)

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
