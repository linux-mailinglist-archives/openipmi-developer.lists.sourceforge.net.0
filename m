Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2036E28919D
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 21:11:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQxnj-0007tt-W8; Fri, 09 Oct 2020 19:11:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kQxne-0007tO-3L
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 19:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=baW1j40oyrw0/DNHh12A7dHdJ/z3IBrTCGUzSy2Qt0U=; b=VS9hrs0FJcSgx/oegOLNcebjq+
 Lk+2VtCUgyLGIseaa1i2BpHGk1q8iFiOL0KPxW1pxRPPGiaMJRWHG1A/b+iwxxMbsOBRoz9W85DBq
 cXqNOlz6Lt/lJHXDBEGQyL1QyKbTyTIZQuwlVsV6LcBXW/Cuvn+u/I9znVS8yvF3rDc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=baW1j40oyrw0/DNHh12A7dHdJ/z3IBrTCGUzSy2Qt0U=; b=FqiGu8o9eH+vhtBbw8chjhlPf5
 Hqc1u4dkoTaLoYJHzD3GfHCsxDYQlkGokTAwYziOXEIlvOcFjkGtcfViK4rv+mrsC5YAqa5ZmPltD
 o7RxcNuSSDl02GY+kcpr4NI1Xc3vdhRVoj2uKqsVfquSJgSFhOeGQfm0frk7MTooU2jI=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQxnT-008pS8-DW
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 19:11:27 +0000
Received: by mail-ot1-f65.google.com with SMTP id n61so9943843ota.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 12:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=baW1j40oyrw0/DNHh12A7dHdJ/z3IBrTCGUzSy2Qt0U=;
 b=LuV4RossWWWXsKmwY82qfvFub19Uko9+f82C66MWZzlHewluwlddL6Ng5uIlyVUujU
 7he0hdbrv2QoTpWj/BjRl3+E8Fgqdqc9v+hiKB/oiiNO9/XGGP3Y5D+ijhz4yxfXBglR
 8VWVsO7kW6GmEUCVWOwofF2kCvJG2GGJslM6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=baW1j40oyrw0/DNHh12A7dHdJ/z3IBrTCGUzSy2Qt0U=;
 b=twiO9GjF0pbYvmBDx7+DGn9q0/Hnp3o6rT9JcllxqUlZ/tJQxynJJr6R+orglhKDzq
 nIKDJ1pveK399xF0uMfIFxl1FoWFwBcYT3/Y8YUOAmyydbrWCYrtHTARkOArAbWvoQyg
 0LAg/rV5Pkf+zUEJCeZ+QZ/qqD/T8gDufesSxn37T2yVEqJOl9UpGiSo+JEvZPFh+60w
 xsOUv13u4fVz899xBpUrq1cWeRHoiinGIA4tvIDEbED8PZT4kKdwRDeIAQSNmvZSl2RO
 rfmsEjiH9n7RIh+eRmN8cTSPdBKT9KRx64yrbe9N9tzVAFdk9GdIkS7CW4auj5jwRbaE
 OOzQ==
X-Gm-Message-State: AOAM530zgwAn6TE/z3fHbMJO6pQo4/Yj+xbTgfpuQr5AAg2TqT/ybDzK
 zUL/2PFYq2pWLhs96xAbVM2PVtFDOlzAMw==
X-Google-Smtp-Source: ABdhPJxv030p5ja0y94Ai5/nITr9cpyq/0eTrPjpyWHsIwF3zqGECh6eEbU8oCnYLS5HMWOrAMlbbA==
X-Received: by 2002:a4a:e758:: with SMTP id n24mr2076315oov.62.1602270180802; 
 Fri, 09 Oct 2020 12:03:00 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o16sm7608048oic.27.2020.10.09.12.02.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 12:03:00 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <202010091103.5E435B42@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <beca7980-9796-9b7b-3ae8-cdd0eb022bb6@linuxfoundation.org>
Date: Fri, 9 Oct 2020 13:02:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202010091103.5E435B42@keescook>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kQxnT-008pS8-DW
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
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/9/20 12:03 PM, Kees Cook wrote:
> On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
>> Note: Would like to get this into Linux 5.10-rc1 so we can continue
>> updating drivers that can be updated to use this API. If this all looks
>> good, Kees, would you like to take this through your tree or would you
>> like to take this through mine.
> 
> I'd mentioned this in the v2, but yes, please take via your trees. :)
> 

Sorry. I missed that. I will get take this through my trees.

> I'm glad to see this landing!
> 

Thanks for reviews and brainstorming ideas. It has been lot of fun
doing this work.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
