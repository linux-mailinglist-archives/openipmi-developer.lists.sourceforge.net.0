Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9896286773
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:37:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEJL-0001kO-EP; Wed, 07 Oct 2020 18:37:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kQEJJ-0001kC-Kz
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=; b=YaUQ5J5TmWvtBaPitQmkf1UQLo
 uk315LmhWPMQhLdjbS9lTT3nilElX7yQYjTCjefsxyAIWjaI0i95pNFbxnPk0eXf6F4KgKTkTfgH4
 MVHBqLoONhsChgpcuhRmrc42rSBYDwELP27VupZMlHXkHtWjuHHMiyZyOlv76xnmiCmw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=; b=NDLBK880SSZYDO/1toeBWnas0B
 2vVsIwLnnQ3AFlhXUPHDu8RuKBLncF7/97t1uq3clWBiVyLOXM98Kg9eniGbGaDzBmF780t4L3gT1
 bjrRbD0VztGuZGzMA2RGAGWlt1vH/M3m764llEUP2w8jZC/LnSQE/5HU9Vx90GEOGu3k=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQEJD-002N2L-FP
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:37:09 +0000
Received: by mail-oi1-f193.google.com with SMTP id m128so3514306oig.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Oct 2020 11:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=;
 b=Oi3QTMD9IkaHxDQu21atk/izzNy05UEr29GvBeVD/aPrPFrwP7zFn/Z0ocm3YCp4/G
 MYj2vvs7sZheVYuugoADfNAzk9zrHJIcbQC6vQqHeZhqwKwGZCaiXL8Vmhwm+mooYfyf
 NVvspGSkmv/96/hUy7UhO+Bi6+iB0pFbMjf5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=;
 b=PNvu8Mw39HgsdcA7HwPDFZtlCsatST0ON4kDXFEsPcSvr6HulbXKqAoeaT/TSXWFew
 8007HihCsSDsHw78VTIw18et92SgMBQFLQAiKjsUL54oC1bjaYOF7CkRmKsurztyZyyR
 QF2WXObxHifJA9Gg/nCFv+YxWUykNDVY31OiKoqLGluMfX1GLSKavlwxumPc85mQ/dlN
 cpdCRmm/3JDxDMop1TcHqcnfEDY7ncPEzJ+I5Vn1IIrDo7WyppOOLF9v69O6Pvfeck2H
 4FGzjFNJ2YuGLiOdty474DT3DBIkHONw/BMdJyStkVkgVzKKFw+ei70W8sW2khLqwI6+
 vTIw==
X-Gm-Message-State: AOAM532eRrLxrlTD0W9bGDcOjgIBeF5oHhb5jSga3/jCbRu1pkkxQsX7
 EI4jJUZWjLBcdBEVmbeL1/4GOOyBUJLaht0z
X-Google-Smtp-Source: ABdhPJwANFS6YYncg0hxvWSF1CAR8KRQ83VHR0P39mH0uwrUqNSGUcIFT7Lpzw7MABy1uBVF3jVVDw==
X-Received: by 2002:a17:90b:4c90:: with SMTP id
 my16mr3717046pjb.27.1602095415557; 
 Wed, 07 Oct 2020 11:30:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b6sm3411877pjq.42.2020.10.07.11.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 11:30:14 -0700 (PDT)
Date: Wed, 7 Oct 2020 11:30:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <202010071128.0772BDD6@keescook>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1602011710.git.skhan@linuxfoundation.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQEJD-002N2L-FP
Subject: Re: [Openipmi-developer] [PATCH v2 00/11] Introduce Simple atomic
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

On Tue, Oct 06, 2020 at 02:44:31PM -0600, Shuah Khan wrote:
> -- Addressed Kees's  and Joel's comments:
>    1. Removed dec_return interfaces (Patch 1/11)
>    2. Removed counter_simple interfaces to be added later with changes
>       to drivers that use them (if any) (Patch 1/11)
>    3. Comment and Changelogs updates to Patch 2/11

Thanks!

> Kees, if this series is good, would you like to take this through your
> tree or would you like to take this through mine?

I think it's very close! I've sent reviews. Why don't you take this tree
for now? (Originally I thought this was going through Greg's tree since
it was touching a lot of drivers.)

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
