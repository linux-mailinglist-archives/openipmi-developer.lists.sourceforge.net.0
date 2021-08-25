Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5F03F7C27
	for <lists+openipmi-developer@lfdr.de>; Wed, 25 Aug 2021 20:24:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mIxZc-00049L-1X; Wed, 25 Aug 2021 18:24:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pcahyna@redhat.com>) id 1mIxZU-00048n-4C
 for openipmi-developer@lists.sourceforge.net; Wed, 25 Aug 2021 18:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+fE1Vb/azQiUcGztegL8GajROsX9gvY+3Nj8fGBa+GE=; b=mdLC9beb/LXp0LAD43V2yTWqF+
 9+OVZVtR8wUaJ+V3kV/93dIcCqBzYWdTbl3yltXD0tnslaADXpSkgBtp3EADEmDrRpw+P/kFSh08V
 7wrAXhyVGEx+aPSPf8gn38ZKseROmML8G9olyQVnfLVEjDesvbQ+RuxstVVZAwZYY9h4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+fE1Vb/azQiUcGztegL8GajROsX9gvY+3Nj8fGBa+GE=; b=C
 D+ncn0bx6n0xnYyrU9WOqXFSlY5iHDiLKsZQCQqTWc8dZODu6tke0RgRr4yRWc7P9z60hOD8Pkbx9
 qbhsYgmkL/d0i0kqf6ilRmc2NUuKUhgZa/7JAhpSmdbcwQR+dKnOAfbMbDjSCASVfr85LPqZ1BVp2
 DeSuXmmdvqocz2CU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIxZR-0007R2-6v
 for openipmi-developer@lists.sourceforge.net; Wed, 25 Aug 2021 18:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629915850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=+fE1Vb/azQiUcGztegL8GajROsX9gvY+3Nj8fGBa+GE=;
 b=CLg9ri3oLeICS8sqoz2SfL4lqQyE49PQgUDMCgKWzD7NG1uEpKoch1+G9SoPEt7qFfvB0O
 6Y0fNa3nDaf91k8/7hudRAmnGF0FHGMhguUhuxw2Eb3lMv/icFTMplgCxnjY/r60y93ceW
 8SanMhzvTrM71PCDHtXbLqxTl+y66pI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-449-3KVA12U_NGGH6U75AqNZFQ-1; Wed, 25 Aug 2021 14:24:09 -0400
X-MC-Unique: 3KVA12U_NGGH6U75AqNZFQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 n10-20020a5d660a0000b02901551ef5616eso99649wru.20
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 25 Aug 2021 11:24:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:in-reply-to;
 bh=+fE1Vb/azQiUcGztegL8GajROsX9gvY+3Nj8fGBa+GE=;
 b=eSEP3w4Y0C280l5NpJ6KORHPrqaxm4mEYea40yVSRJzUnBbu/Z0mPjU5ALpsZ2Ki8q
 E1ww81a0YcspR6sJIFc7G2fqzKWNw0bw3TQ8knI1nyExk5zLt65ildKKVLs7x1ZP49Qt
 p3oSTgbg7LOykZMaLswR8JfM/T2yzDuzU41S6lu/owFJckyn7evcnR99mE8+3QVlHzf8
 YRti00gdCmEjtFGwauQclXrodZuTrVw7DnJNVGzxugO88ZO737gi7vpIBMraj0WeoU/1
 Io9andKEFVEMySEK4o2rGTlFsTKPW3ps16dKD8devwJZ8gCDqBA+sae/OLGkqnbnWM4T
 hixQ==
X-Gm-Message-State: AOAM53150++MfNSssmk6M5XtlPnT4LqRpXJSa77Qvt3yWJB0bcSI455L
 CSiHW6mfReXds6t3cnpKQ9JYzPi/DuWr7480+DH76GqEOvhbzmNRf+bMkIpjZ+OhqYUyKxIWDLC
 oPnJ78K/x6n9QJvrZ03cnookSINmhZ8cdqYWWjDWMhXrWvWtHWBiQDcLX7tL+RZbaE4ANPvDRfO
 U8i3B7OyfzxFrhvg==
X-Received: by 2002:adf:efc2:: with SMTP id i2mr20224509wrp.94.1629915847889; 
 Wed, 25 Aug 2021 11:24:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzaDa9bsu5XLnr4C6IN5UECqyurNbRYegrg0ZXpPBzznVGpw4WKJL8w9OqXrk3lrQDqn7My2Q==
X-Received: by 2002:adf:efc2:: with SMTP id i2mr20224486wrp.94.1629915847616; 
 Wed, 25 Aug 2021 11:24:07 -0700 (PDT)
Received: from redhat.com ([94.230.146.129])
 by smtp.gmail.com with ESMTPSA id t14sm600822wrw.59.2021.08.25.11.24.07
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 11:24:07 -0700 (PDT)
Date: Wed, 25 Aug 2021 20:24:05 +0200
From: Pavel Cahyna <pcahyna@redhat.com>
To: openipmi-developer@lists.sourceforge.net
Message-ID: <YSaKxX9tgS2IxCWH@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20210123014322.GE1157510@minyard.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pcahyna@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIxZR-0007R2-6v
Subject: Re: [Openipmi-developer] OpenIPMI 2.0.31 released
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Corey,

at a quick glance at header file diffs, it seems to me that the Windows
DLL changes are introducing library API changes even for non-Windows
builds. Specifically, commit:

26e0921e77b6db359e7b018e8d439fcd1222d891 seems to affect the API of libIPMIlanserv.so.0.0.1
cb416caa52dd73e53ada88ccda4aa496154519e8 seems to affect the API of libOpenIPMIcmdlang.so.0.0.5

Is that correct? If so, it seems that those libraries should have their
major version numbers bumped.

Regards, Pavel



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
