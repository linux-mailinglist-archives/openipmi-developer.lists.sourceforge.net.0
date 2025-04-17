Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AF7A92C91
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Apr 2025 23:17:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u5WbA-0007uK-37;
	Thu, 17 Apr 2025 21:16:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u5Wb9-0007uE-6v
 for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 21:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AxyhzbzIHVkJvC2MgzVh8m2arwnfs5b3zesOIXgwMoA=; b=F24s01ssSx2MrrLVp8D1yERdHb
 7SkbwVy9PN8TsoQdEAwa1mGNBaegZ/zusIllr0BP3RmUll7hF+EFODIkNVsDRgETMADwemLncs8hj
 Rhu3tZkoPC1Q8lkEoN0p42sZFrnOdEq7XlqTmMgsoqApJrgl+zTqm5fvU1W5hYuyofvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AxyhzbzIHVkJvC2MgzVh8m2arwnfs5b3zesOIXgwMoA=; b=IbWIo5QACVIjDi5ydEa3Z3Naxv
 uxmJwI3eWwz7P3EdsgJKcFg6vVKGH11yNDH7bUha8fTjF5nu2/EWLiUpE2CsUnp/n2tkhlS8qOIiB
 GYDxBs4TYM8tydh32kGDeZgDxb/wQthjbRxAhnu6rzO46NpxiQrVjK5JBrPzxVkZHgiw=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u5Was-0001Q8-TJ for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 21:16:38 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-72ecc30903cso652144a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 17 Apr 2025 14:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1744924572; x=1745529372;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AxyhzbzIHVkJvC2MgzVh8m2arwnfs5b3zesOIXgwMoA=;
 b=Tnp5hH3th4GdfEe5HmjEOdq4DYQvDb4DEgFW+1Q10RGfy5NHV1B1QIdLjVgo8FB+uM
 YP+frInokP8/2cBz1o/Z/VWuHTUBTqZ+3W95foNrU0N77i0fuZfJliRrLw1lCLpE7m5w
 OMXvWPcHijWWKXp8X4u98v7i5A0WeDuXAaGEJWmboN1f6yqa0rqp/datgzbQ2IjSIje4
 jnGeUn43JBhbPTx+aPR5O2SCTaBDkP4j3J68shtrKsMlx3jQEfys0QCJHrTqcUDTIoSw
 WedTc7wWaghTBQrhw1FDqcyl4IKMS81Rj6gYxg724DFklZwcbPaxdRTiSHasS0KEUUFK
 MY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744924572; x=1745529372;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AxyhzbzIHVkJvC2MgzVh8m2arwnfs5b3zesOIXgwMoA=;
 b=K4pXLX90WarBfRlT+rlDKp/y5yln3W2K1PtMYXMss0lacE1ULfm1DKMpSaby2RPclg
 CTZug2LRQe+N+ujR8JoQDm2Yf8wxPeRsWom2Dn8OD9eHYvXOA/fFj6R2t0ypmS36en6R
 NTOcKe/uvMM0/ZIKFzp5cNuueUhS23Xa+AKu3tzjA3NZCF8tqJFGSwafEeDm97gS1Iud
 bIZzv5Ph1UCnj6LjXbi+Mt2GH7z6R17pNmVIsoDaoCiJV1voe+W8JI4SsIazElgvFLfH
 4ai7gguWmE25241UnnxohOz2RjsXBjr4YvBgxeRRVt7YI+4J0YRuHZZrvRK7cLdwryTB
 l4SA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXs5FdvIqIDasg2U6peC6Mry/XbUZ7s+MpAATc1egehWhKKXDj278WeN7D3pIvwRD5uLTIqioNuMupVlXAZMRMsoYc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzBghTZNKLXFP1SyzMz6ZASXv0F1OKHOgzq2XB/erD/fEUyd8XA
 ksTOLknIWmCaodJkw4N3ilQEdYOFQAMCqtnuiIb7d2S4Ay61mNTu1v8wASuTG7lD9ZI9kJinwMh
 v
X-Gm-Gg: ASbGncsphwfkF0cXvhU/m8yvT5eqcvu0Daz3IWuz3eGzBoTrBuUN9oInc2L511glI0G
 0w/grVvN1lACGvaKV61KLQc0ANsk0dEzyFa2R6Umjbs2Zwfq+VOJePxvaQiaGf1TzHbDRIGoCpn
 PjPlRF8Dx+PWB2rlDFWfVL487CvDLEQwe3W8sgz1xjZdFPjEmXfqBjiAPXnoUcNg0vTrfpvC/GO
 E7JTgBeAGelPeHssspZboLRLo/LUweXtH+6dysaJoayN6EobNd3BnC8hNt0DsDyYFkXEmLfccmd
 KyTlEgyEguGolkbBFznrPMN4A+YyKMausj6dGeHqWiXG
X-Google-Smtp-Source: AGHT+IEEBCPGIT987h1aHaE/eKmnbK1GNdv4lCevrZreACU6pefT9/dZW63fGbDma8uaCTHrBWM2qQ==
X-Received: by 2002:a05:6830:600b:b0:72b:9506:8db0 with SMTP id
 46e09a7af769-73006213195mr121803a34.12.1744923254576; 
 Thu, 17 Apr 2025 13:54:14 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:8795:e9fb:beca:ef25])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7300478f3fasm89495a34.7.2025.04.17.13.54.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Apr 2025 13:54:14 -0700 (PDT)
Date: Thu, 17 Apr 2025 15:54:09 -0500
From: Corey Minyard <corey@minyard.net>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aAFqcaFGOoOVRpWO@mail.minyard.net>
References: <20250416183614.3777003-2-corey@minyard.net>
 <aAEkdwD888tW2OUY@smile.fi.intel.com>
 <aAElHft1iVqZbhBA@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aAElHft1iVqZbhBA@smile.fi.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 17, 2025 at 06:58:21PM +0300, Andy Shevchenko
 wrote: > On Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko wrote:
 > > On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote: > [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.44 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.44 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u5Was-0001Q8-TJ
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi:si: Move SI type
 information into an info structure
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
Reply-To: corey@minyard.net
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 17, 2025 at 06:58:21PM +0300, Andy Shevchenko wrote:
> On Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko wrote:
> > On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote:
> > > Andy reported:
> > > 
> > > Debian clang version 19.1.7 is not happy when compiled with
> > > `make W=1` (note, CONFIG_WERROR=y is the default):
> > > 
> > > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
> > > +from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> It seems you copied'n'pasted from narrow screen. The lines should kept as is
> (as long as they are) without an additional line break and plus sign.

Yep.  Thanks Andy.  Should this wait for for 6.16, or would 6.15 be
better?

-corey

> 
> > >   268 |         io.si_type      = (enum
> > > +si_type)device_get_match_data(&pdev->dev);
> 
> Ditto.
> 
> > > The IPMI SI type is an enum that was cast into a pointer that was
> > > then cast into an enum again.  That's not the greatest style, so
> > > instead create an info structure to hold the data and use that.
> > 
> > Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
