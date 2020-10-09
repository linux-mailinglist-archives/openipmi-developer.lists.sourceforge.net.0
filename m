Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 386BA289095
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 20:10:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQwq6-0004oZ-Q3; Fri, 09 Oct 2020 18:09:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kQwq4-0004oG-Nx
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 18:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=; b=PKyaDuYvAG1PeD6KxdHXJZb6ag
 4aBwH3g+czmD0n55JRtPI8hthcrbemN2Coy8MPUPwxvqFWcfAUBoCH4ezX8F5beD74RkxV5JmlBZ4
 On50hUheY1U8kp3uPYBy+ULO05J88KNf93lffXYCVa20oHt/zMIHyixNGryHVyDnX1jY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=; b=L2O3yRPq1FZg/JdjYyRkmjWw8q
 aa1/TcN4REhpgDFUqlrJHKOwZqhWE85TVse8uppaLM7t8xTN90cTzC60N6Fhsrx5xsPA8F6nS79P+
 0gvhsEpD/XrCmyokIlIAaYbXO6UupzRcwMhMkNC4EdPXZMGem0uC+AUJdGYCeCQOq1k8=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQwpu-004VeM-9E
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 18:09:56 +0000
Received: by mail-oi1-f194.google.com with SMTP id c13so11082314oiy.6
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 11:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=;
 b=iiTNuyzuEmUSEE/Hru+Y3B6KbrrOPsp8fAtOvbJ8mesODX2DzYvlOxWG0bMEGSA3ao
 YcgG/aEDxmOxo1Agatg0s3CfdWn6fgaz30eymOcckXmvkDOG8T/5pnArNF8z9q7q1ch8
 T7c+WYhFXX6wq88srZeVbX0XazKryeUuBjlrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=;
 b=Ud91n748tWnL1wJaDF4jH/Ml9S19mC4p7RzlctB7S8ifF7ChN7IMq6EmBVjxkNzrVn
 tGaMVH0Je4NC7wDS2/7O0z7syoP98civSMvsFaaBECfbQgLfsHTSaRjbqCaBwSFvpM3a
 4Iiojzq1tF1Vh3nrdfJr+OMtJxarYTrh5B/pBolz6g1C9I19S11+ZM19rwPO1kNzdBcG
 0IhPMTy6VGnK5nmlaTnQ1frIKBbXo4XCEsWF//9M35YvRXro82BEcu69cGhxCqsMn3rX
 CSqprrvU2lM/p+CRkB/4Y1/XI0kdt9XuexGEwfTC3rdhws6mYrEW0B5atqxJl35tGpJS
 VA+Q==
X-Gm-Message-State: AOAM5320A7wMQj300nv8gew5TOZDkrKGoHgtMTY9i14EA39+5OksRhZY
 V4eEKb7+boBt9s0llHfmyaOtO9da39dCew==
X-Google-Smtp-Source: ABdhPJysT12No1lDoGSMw/H2+Oq/8cLgq6b3+eY2EubBXnsEpPWixk4MotSHSqGPQyU35R7/5GB0Cg==
X-Received: by 2002:a17:90a:7f8b:: with SMTP id
 m11mr5894826pjl.121.1602266626529; 
 Fri, 09 Oct 2020 11:03:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d128sm11815809pfd.94.2020.10.09.11.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 11:03:45 -0700 (PDT)
Date: Fri, 9 Oct 2020 11:03:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <202010091103.5E435B42@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1602209970.git.skhan@linuxfoundation.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQwpu-004VeM-9E
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

On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> Note: Would like to get this into Linux 5.10-rc1 so we can continue
> updating drivers that can be updated to use this API. If this all looks
> good, Kees, would you like to take this through your tree or would you
> like to take this through mine.

I'd mentioned this in the v2, but yes, please take via your trees. :)

I'm glad to see this landing!

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
