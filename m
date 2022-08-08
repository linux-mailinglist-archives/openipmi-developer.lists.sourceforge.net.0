Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2606D58C4BE
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 10:11:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKxrK-0005M8-Fq; Mon, 08 Aug 2022 08:11:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1oKxrD-0005Lv-PI
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 08:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=; b=O6/mooayeDAFt9+32OADz3fH1U
 ZBBGYD14zppYiihs6tsZJbx0eplfVcNhRoQYsUnlroGlk8I/fpgZB8cMZelpwMgbnYdkvuh4Kfwd/
 VcLPi1yrOafVl4oN+/pueX99wr/JPVw0kTC5nVhOMGqE/Wj+Z0/ZK9rAJzRrQDOreWUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=; b=SY6Psy4NOntQGYXe+naiTbfFoc
 hPBSA/evEDeHNwiSoy03aIZFv1qJtFQxemFK0coy42ymIWi/ApY7UZv8KrPU+hCjjAbEJRZ+zylFV
 Ja06Pday5MP2/iD1xCWENHwdfLtCAXCpbEeAyM/tELkqHOmOHBl6mita1TAI+SID/RZ4=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKxrA-0003vH-Nb
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 08:11:28 +0000
Received: by mail-lf1-f41.google.com with SMTP id v2so2916934lfi.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 01:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=;
 b=Po+JD5H4qJluYvs2Tmlpq493Ucl5fpb4S8tltzUbKWLlzYnEiaXX5qVYmZrJYq4qjD
 EFGzPhrOizK2t9B4lE9hPGZXAG8w8DxJUiqgrkS8wEvW7gNVO7zjJvYt7sllloSty+e6
 uCbMv3FYmM4UoQlXhmfF8EiREzHEni/+4tMnTfmDES7ESdgczr0MUj8WFCPUswV+p+H5
 bFRsveOIOjy48Za84wbo7tw7m4HxyTwrE0bVB2zpG8eUWoMAlfh/cNVyg/wwarGr+hUI
 7tge4rfDNlnah0y2s+4lxyeNK9stb/QwK7wcdr8swDlABzFGv17uDiGPdoQUpn3qI/IS
 YvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=;
 b=wqDTFBEstGYOP4alDmXDf2WbWa+Iy9381mY+KikFVmacdqAIFA/PVHnMAPGjcnZPXf
 9dOs/rA2rYLwPOLcK51cdN759goejwE48zDFcoYl3mXZot83cHVP8HnFNjHyhELRQPpv
 RBIxFEzxyXJuXU1gtXuyf/CAnj5njYg3/UcoiIMxcELX/FSgzTeCglDRETD7CJ0PfMbX
 IZ4KGbETAKFRMEF42pY4jWGcNRyGc09bKDD5yIqxLpHoDLjb0PLqDz6Qw+k0Lv1rDufH
 BUZMIl0Rt5vv5b1K/R8Ele1AQfAeckgO4H/IcSroUEW6w5LVW5e9ax99jB2ygYtwwHTo
 M8uQ==
X-Gm-Message-State: ACgBeo1zmDi7smL+fcFuHNQmjDunyeWYxvpgfurGpK3y5HB8vVR/5soR
 0Q/KLnXGcC441uGeR5GVOp8EJQ==
X-Google-Smtp-Source: AA6agR5xjV4h1UPMDBLzbNYDD1moY7ObuTURyWbiZuieFApJ57aRZHApeXAgEKvYt+fNNLR2yhJf2Q==
X-Received: by 2002:a05:6512:32c5:b0:48b:fa9f:a98f with SMTP id
 f5-20020a05651232c500b0048bfa9fa98fmr2334042lfg.335.1659946278217; 
 Mon, 08 Aug 2022 01:11:18 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
 by smtp.gmail.com with ESMTPSA id
 k3-20020a2eb743000000b0025e48907929sm1293653ljo.23.2022.08.08.01.11.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Aug 2022 01:11:17 -0700 (PDT)
Message-ID: <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
Date: Mon, 8 Aug 2022 11:11:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
 tali.perry1@gmail.com, joel@jms.id.au, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, jic23@kernel.org, minyard@acm.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220808075452.115907-1-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808075452.115907-1-tmaimon77@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 08/08/2022 09:54, Tomer Maimon wrote: > Add to npcm845
 KCS compatible string a fallback to npcm750 KCS compatible > string becuase
 NPCM845 and NPCM750 BMCs are using identical KCS modules. > > Fixe [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oKxrA-0003vH-Nb
Subject: Re: [Openipmi-developer] [PATCH v3] dt-binding: ipmi: add fallback
 to npcm845 compatible
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 08/08/2022 09:54, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> 
> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
