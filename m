Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 105933CA4AB
	for <lists+openipmi-developer@lfdr.de>; Thu, 15 Jul 2021 19:44:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m45Oz-00033b-Ia; Thu, 15 Jul 2021 17:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1m45Ox-00033O-Rl
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Jul 2021 17:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eJvBNVIbt4HGtOUd1eE/GFLNbukv56MIw2CIkqxy0xM=; b=h+3jWfl2GtuiKcNRuTFibHOyFN
 Qm9tNPl2C8lLu9j1hik0OlQiAgSrHccgucquFACKyqZWaclle4Zd9SWU6kFlIzOS9dB0RhvxvOO6y
 ugx0NVGd29S10mD8704HrAYqVqm5uKpvETxrQP+QaVe4n60yt5vPHbv2WONefhCfKA7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eJvBNVIbt4HGtOUd1eE/GFLNbukv56MIw2CIkqxy0xM=; b=jh3TswRBF3RLxHHOT9X6JlvlaU
 1yiUpnbbAKW7+H3EgEBC2ij6LxFjF2NC20PKccv+hwH2lVhp16eheqoJLdCLcYQw3sC20bRjjvuaa
 ngnBfIe0+ofLttzWxcJHxbfBdeLr+qcEXZg0jOxZF1r06siQOcaZRXu2SYaz/CDwzp9c=;
Received: from mail-il1-f170.google.com ([209.85.166.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m45Oo-00030s-RL
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Jul 2021 17:43:59 +0000
Received: by mail-il1-f170.google.com with SMTP id b14so5737792ilf.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 15 Jul 2021 10:43:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eJvBNVIbt4HGtOUd1eE/GFLNbukv56MIw2CIkqxy0xM=;
 b=cuUB4BtGj5JEwJZbxXaoBQ/2WIU7GOuI2wt1Dd8qNfV3vqJanRwsYLVBPiyPyyi/J3
 KTRQmSdKdgp/6qsdlB307Tc5a4m7WO6YzxWsGRekTEhKlAVUwszf0tDjL1ToftqaEktp
 p4/Ulgox6FGnTxYxPsMeS4FWMeZx4cs7ZNOyXdly+bkoIl7hZwNd1setT0qfOEFwbeRc
 I5CfWnSLv54OdcBTr+rRD7qqNVJlnRszHWCBeqiPdoQHTE9NCCclMokx4AwISrYokfRz
 8835jZnilg+njgeSpAVgFJ9lBptR/DiuxpTHv3IUpugFmTMAQYW46T9uBSJCPWQJVlkN
 Njng==
X-Gm-Message-State: AOAM531HzDEQiRerlg8H5pqzuXEjvERge3iBs/81KwcIn0qJSP/EhQm6
 BcsiUhe0C+7CGMPcCxsx5A==
X-Google-Smtp-Source: ABdhPJyUCaDwlujyrWqGxamEcOBQBh/mEVhjQMODh+aCT6OUUAmS+sAvZKgCichuIqty/y4GGWAqLg==
X-Received: by 2002:a05:6e02:1b8f:: with SMTP id
 h15mr3426922ili.151.1626371025179; 
 Thu, 15 Jul 2021 10:43:45 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id w1sm3056450ilv.59.2021.07.15.10.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 10:43:42 -0700 (PDT)
Received: (nullmailer pid 1309176 invoked by uid 1000);
 Thu, 15 Jul 2021 17:43:39 -0000
Date: Thu, 15 Jul 2021 11:43:39 -0600
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210715174339.GA1309142@robh.at.kernel.org>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714033833.11640-4-quan@os.amperecomputing.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.170 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.170 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m45Oo-00030s-RL
Subject: Re: [Openipmi-developer] [PATCH v5 3/3] bindings: ipmi: Add binding
 for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 14 Jul 2021 10:38:33 +0700, Quan Nguyen wrote:
> Add device tree binding document for the SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v5:
>   + None
> 
> v4:
>   + Fix warning with dt_binding_check [Rob]
>   + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml [Quan]
> 
> v3:
>   + Switched to use DT schema format [Rob]
> 
> v2:
>   + None
> 
>  .../devicetree/bindings/ipmi/ssif-bmc.yaml    | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
