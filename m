Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C24249E2A
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 14:36:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8NKm-0007UY-L6; Wed, 19 Aug 2020 12:36:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1k8NKl-0007UR-4J
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 12:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3en8ioK7+zOyAQlobwYcxIIoxFOpgjgaDWOWMon35gs=; b=AfbrGhoXWOl7yjN/vM/N1MIOr6
 oWWFSQWAeXWkgA0cNRKkgeFjJEHNfm5L3mgaW+xJmCysbS94v8wW5IjP7rsK+mL3/BoceM4g5uVq8
 ha5JcfHNE1vKTrlCI7VUnBAghcvTIBJ6Ey84qe9ym39q99I6DrCZHbe4mvKvaxEhzvE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3en8ioK7+zOyAQlobwYcxIIoxFOpgjgaDWOWMon35gs=; b=aDzTGvYh2U/ULaBSBJwU1a2rMz
 ezPXt7LBvjUWocs9aZQrkntfj1aSSMPHef1Tt1tSShBRDsDDdwPd6YtOol03evX7fCvl5+1DsVPyy
 Zyb6A4WNCkYn+N/BmNvxus9Drrp1E37mRGTuASE0sexs6z4scyjd0zQ2K31UI2wXvn1w=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8NKf-001KNI-Qj
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 12:36:50 +0000
Received: by mail-oi1-f193.google.com with SMTP id u63so20855966oie.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Aug 2020 05:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3en8ioK7+zOyAQlobwYcxIIoxFOpgjgaDWOWMon35gs=;
 b=b/bvjxgi7eYbVSCLLopzDsmN/mEqxKY/lunKjizvMqDiMlniD+gPYaUz1Frl/QBwWL
 Ff0bM+hWcM1uKZ3Y4tzsLxxsrL/341K7uzwQK6rPyE5EQkfQkFKBpdOSSjtKhDsWIm3m
 f5sH2G2h1DK0gX7JEUbIb0ZlwTN5SOfX5nwDN3+1qNyZKvDXndPvK7l9hNYAinb+kArn
 XB/27KzfprtxN9Q69oe5HKZSsDIvOsYF7HfirGKyKGgKgbwgfCBSQo9Lu/+Vovwad6N3
 u6MG7pwGWAPSy7LZcNXz6j+3MQVZXFZeT0sqrhmFPUxIv0i4R3tSPZQoyZTEMtoMF7gv
 hQng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=3en8ioK7+zOyAQlobwYcxIIoxFOpgjgaDWOWMon35gs=;
 b=QUm51g4POpNhJWkEY+GlzRZV7RdASYTa4ihfyc6AkSR2+BMuZRHefNMsndCiGU2kPr
 80miy3YhvA+WulEMjBK+NY3gj+SKIIVp9O5aQlm6i7ZyQ8cJ5SB0mBeJqb5kq2xz6L9B
 3wtdmq61TKDMDK3CzT/+ftzcjWro7lXQu3ubNrkDdZlKsgdvBv2tZuZ2l01bHm/ZB3C1
 /5FPRYKO4JOn9l6nxNCNt9qJvGSvBwZH1LG9sLVNXjEqxqAM9fOIP6lRy0gzvub0fc1c
 Z/1YVIdnB2XEFMkvCnki0VnjCUekJu9fLGm2KLMtrhSeQ7cRCIs7TVoJDKzMjnd022qN
 2Bjg==
X-Gm-Message-State: AOAM5317vOF/yUf2K2L2tSxVNFe23xtmsGLzTfgDjFv/8bqHCy9LdjW4
 HLUthYd3eaXNTKUlbsO9gA==
X-Google-Smtp-Source: ABdhPJzgjqgPzoZN9E7aq5yvjkWO4DuXYFZeNVkelsh9TiCZNCvWKcimal8zxCcUc0XPXP5MGHB2TA==
X-Received: by 2002:aca:4996:: with SMTP id w144mr2875860oia.119.1597840592973; 
 Wed, 19 Aug 2020 05:36:32 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id w11sm4341614oog.33.2020.08.19.05.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 05:36:31 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id C03F61800D4;
 Wed, 19 Aug 2020 12:36:30 +0000 (UTC)
Date: Wed, 19 Aug 2020 07:36:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20200819123629.GK2842@minyard.net>
References: <20200819101439.74566-1-andriy.shevchenko@linux.intel.com>
 <20200819115717.GJ2842@minyard.net>
 <20200819120509.GH1891694@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819120509.GH1891694@smile.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8NKf-001KNI-Qj
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: convert tasklets to use
 new tasklet_setup() API
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
Reply-To: minyard@acm.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 19, 2020 at 03:05:09PM +0300, Andy Shevchenko wrote:
> On Wed, Aug 19, 2020 at 06:57:17AM -0500, Corey Minyard wrote:
> > I already have a patch for this from Allen Pais that is in the next
> > tree.
> 
> Apparently not in today's Linux Next...

Dang, I screwed that up, I pushed the wrong branch.  It should be there
next time.

Sorry,

-corey

> 
> > On Wed, Aug 19, 2020 at 01:14:39PM +0300, Andy Shevchenko wrote:
> > > In preparation for unconditionally passing the struct tasklet_struct
> > > pointer to all tasklet callbacks, switch to using the new tasklet_setup()
> > > and from_tasklet() to pass the tasklet pointer explicitly.
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
