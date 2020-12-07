<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
                'name'=>'GIRLS STRIPED DRESS',
                'price'=>'1290',
                'category'=>'top',
                'description'=>'Girls striped collared dress with front buttons and elbow length sleeves are the choice for this season. the cord at the waist gives this dress a casual feel that can be worn together with ballerinas or sneakers.',
                'gallery'=>'https://www.fashionbug.lk/wp-content/uploads/2020/11/080504800199-C3_Fashion-Bug-1.jpg'
                ],
                [
                    'name'=>'LADIES PEPLUM TOP',
                    'price'=>'1690',
                    'category'=>'Blouse',
                    'description'=>'Ladies wide neck peplum top with front buttoned down opening detailed with gold buttons and 3/4 length sleeves with elasticated cuff and lace detail for a formal or smart casual styling.',
                    'gallery'=>'https://www.fashionbug.lk/wp-content/uploads/2020/10/080300913659-C35-1_LADIES-TOP_Fashion-Bug.jpg'
                    ],
                    [
                        'name'=>'LADIES BATIK SAREE',
                        'price'=>'2990',
                        'category'=>'Saree ',
                        'description'=>'Ladies cotton Batik Saree.Product image may differ to actual due to photographic lighting*',
                        'gallery'=>'https://www.fashionbug.lk/wp-content/uploads/2020/09/080305401669-1_Saree_Fashion-Bug_Sri-Lanka.jpg'
                        ],
                        [
                            'name'=>'LADIES KURTI SET',
                            'price'=>'3290',
                            'category'=>'KURTI',
                            'description'=>'Ladies 3/4 sleeve Linen Kurthi paired with a matching pant is the best addition to your wardrobe this season.*Product image may differ to actual due to photographic lighting*',
                            'gallery'=>'https://www.fashionbug.lk/wp-content/uploads/2020/11/080303202802-3-colour_LADIES-KURTI_Fashion-Bug.jpg'
                            ],
                            [
                                'name'=>'LADIES JUMPSUIT',
                                'price'=>'2190',
                                'category'=>'Jumpsuit',
                                'description'=>'flare sleeve casual jumpsuit with wrapped front',
                                'gallery'=>'https://www.fashionbug.lk/wp-content/uploads/2020/05/080311800030-C2-1_compressed.jpg'
                                ]
            
            
           
        ]);
    }
}
